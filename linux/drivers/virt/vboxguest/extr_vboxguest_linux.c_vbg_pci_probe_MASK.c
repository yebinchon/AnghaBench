#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vmmdev_memory {int size; int /*<<< orphan*/  version; } ;
struct TYPE_3__ {void* minor; int /*<<< orphan*/ * fops; int /*<<< orphan*/  name; } ;
struct vbg_dev {int io_port; TYPE_1__ misc_device; TYPE_1__ misc_device_user; struct device* dev; struct vmmdev_memory* mmio; } ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; struct device dev; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_NAME ; 
 int /*<<< orphan*/  DEVICE_NAME_USER ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 void* MISC_DYNAMIC_MINOR ; 
 int /*<<< orphan*/  VMMDEV_EVENT_MOUSE_POSITION_CHANGED ; 
 int /*<<< orphan*/  VMMDEV_MEMORY_VERSION ; 
 int /*<<< orphan*/  dev_attr_host_features ; 
 int /*<<< orphan*/  dev_attr_host_version ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 struct vmmdev_memory* FUNC1 (struct device*,int,int) ; 
 struct vbg_dev* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vbg_dev*) ; 
 int /*<<< orphan*/ * FUNC4 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,int) ; 
 int FUNC13 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,struct vbg_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct vbg_dev*) ; 
 int FUNC16 (struct vbg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbg_core_isr ; 
 int FUNC17 (struct vbg_dev*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 struct vbg_dev* vbg_gdev ; 
 int /*<<< orphan*/  vbg_gdev_mutex ; 
 int /*<<< orphan*/  FUNC19 (char*,void*,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  vbg_misc_device_fops ; 
 int /*<<< orphan*/  vbg_misc_device_user_fops ; 

__attribute__((used)) static int FUNC20(struct pci_dev *pci, const struct pci_device_id *id)
{
	struct device *dev = &pci->dev;
	resource_size_t io, io_len, mmio, mmio_len;
	struct vmmdev_memory *vmmdev;
	struct vbg_dev *gdev;
	int ret;

	gdev = FUNC2(dev, sizeof(*gdev), GFP_KERNEL);
	if (!gdev)
		return -ENOMEM;

	ret = FUNC11(pci);
	if (ret != 0) {
		FUNC18("vboxguest: Error enabling device: %d\n", ret);
		return ret;
	}

	ret = -ENODEV;

	io = FUNC13(pci, 0);
	io_len = FUNC12(pci, 0);
	if (!io || !io_len) {
		FUNC18("vboxguest: Error IO-port resource (0) is missing\n");
		goto err_disable_pcidev;
	}
	if (FUNC5(dev, io, io_len, DEVICE_NAME) == NULL) {
		FUNC18("vboxguest: Error could not claim IO resource\n");
		ret = -EBUSY;
		goto err_disable_pcidev;
	}

	mmio = FUNC13(pci, 1);
	mmio_len = FUNC12(pci, 1);
	if (!mmio || !mmio_len) {
		FUNC18("vboxguest: Error MMIO resource (1) is missing\n");
		goto err_disable_pcidev;
	}

	if (FUNC4(dev, mmio, mmio_len, DEVICE_NAME) == NULL) {
		FUNC18("vboxguest: Error could not claim MMIO resource\n");
		ret = -EBUSY;
		goto err_disable_pcidev;
	}

	vmmdev = FUNC1(dev, mmio, mmio_len);
	if (!vmmdev) {
		FUNC18("vboxguest: Error ioremap failed; MMIO addr=%pap size=%pap\n",
			&mmio, &mmio_len);
		goto err_disable_pcidev;
	}

	/* Validate MMIO region version and size. */
	if (vmmdev->version != VMMDEV_MEMORY_VERSION ||
	    vmmdev->size < 32 || vmmdev->size > mmio_len) {
		FUNC18("vboxguest: Bogus VMMDev memory; version=%08x (expected %08x) size=%d (expected <= %d)\n",
			vmmdev->version, VMMDEV_MEMORY_VERSION,
			vmmdev->size, (int)mmio_len);
		goto err_disable_pcidev;
	}

	gdev->io_port = io;
	gdev->mmio = vmmdev;
	gdev->dev = dev;
	gdev->misc_device.minor = MISC_DYNAMIC_MINOR;
	gdev->misc_device.name = DEVICE_NAME;
	gdev->misc_device.fops = &vbg_misc_device_fops;
	gdev->misc_device_user.minor = MISC_DYNAMIC_MINOR;
	gdev->misc_device_user.name = DEVICE_NAME_USER;
	gdev->misc_device_user.fops = &vbg_misc_device_user_fops;

	ret = FUNC16(gdev, VMMDEV_EVENT_MOUSE_POSITION_CHANGED);
	if (ret)
		goto err_disable_pcidev;

	ret = FUNC17(gdev);
	if (ret) {
		FUNC18("vboxguest: Error creating input device: %d\n", ret);
		goto err_vbg_core_exit;
	}

	ret = FUNC3(dev, pci->irq, vbg_core_isr, IRQF_SHARED,
			       DEVICE_NAME, gdev);
	if (ret) {
		FUNC18("vboxguest: Error requesting irq: %d\n", ret);
		goto err_vbg_core_exit;
	}

	ret = FUNC7(&gdev->misc_device);
	if (ret) {
		FUNC18("vboxguest: Error misc_register %s failed: %d\n",
			DEVICE_NAME, ret);
		goto err_vbg_core_exit;
	}

	ret = FUNC7(&gdev->misc_device_user);
	if (ret) {
		FUNC18("vboxguest: Error misc_register %s failed: %d\n",
			DEVICE_NAME_USER, ret);
		goto err_unregister_misc_device;
	}

	FUNC8(&vbg_gdev_mutex);
	if (!vbg_gdev)
		vbg_gdev = gdev;
	else
		ret = -EBUSY;
	FUNC9(&vbg_gdev_mutex);

	if (ret) {
		FUNC18("vboxguest: Error more then 1 vbox guest pci device\n");
		goto err_unregister_misc_device_user;
	}

	FUNC14(pci, gdev);
	FUNC0(dev, &dev_attr_host_version);
	FUNC0(dev, &dev_attr_host_features);

	FUNC19("vboxguest: misc device minor %d, IRQ %d, I/O port %x, MMIO at %pap (size %pap)\n",
		 gdev->misc_device.minor, pci->irq, gdev->io_port,
		 &mmio, &mmio_len);

	return 0;

err_unregister_misc_device_user:
	FUNC6(&gdev->misc_device_user);
err_unregister_misc_device:
	FUNC6(&gdev->misc_device);
err_vbg_core_exit:
	FUNC15(gdev);
err_disable_pcidev:
	FUNC10(pci);

	return ret;
}