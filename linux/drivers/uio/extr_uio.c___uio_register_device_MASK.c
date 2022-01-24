#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct uio_info {scalar_t__ irq; struct uio_device* uio_dev; int /*<<< orphan*/  name; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  version; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; struct device* parent; int /*<<< orphan*/ * class; int /*<<< orphan*/  devt; } ;
struct uio_device {TYPE_1__ dev; int /*<<< orphan*/  minor; int /*<<< orphan*/  event; int /*<<< orphan*/  wait; int /*<<< orphan*/  info_lock; struct uio_info* info; struct module* owner; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UIO_IRQ_CUSTOM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct uio_device*) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct uio_device*) ; 
 struct uio_device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uio_device*) ; 
 int /*<<< orphan*/  uio_class ; 
 int /*<<< orphan*/  uio_class_registered ; 
 int FUNC13 (struct uio_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct uio_device*) ; 
 int /*<<< orphan*/  uio_device_release ; 
 int /*<<< orphan*/  FUNC15 (struct uio_device*) ; 
 int FUNC16 (struct uio_device*) ; 
 int /*<<< orphan*/  uio_interrupt ; 
 int /*<<< orphan*/  uio_major ; 

int FUNC17(struct module *owner,
			  struct device *parent,
			  struct uio_info *info)
{
	struct uio_device *idev;
	int ret = 0;

	if (!uio_class_registered)
		return -EPROBE_DEFER;

	if (!parent || !info || !info->name || !info->version)
		return -EINVAL;

	info->uio_dev = NULL;

	idev = FUNC9(sizeof(*idev), GFP_KERNEL);
	if (!idev) {
		return -ENOMEM;
	}

	idev->owner = owner;
	idev->info = info;
	FUNC10(&idev->info_lock);
	FUNC7(&idev->wait);
	FUNC1(&idev->event, 0);

	ret = FUNC16(idev);
	if (ret) {
		FUNC8(idev);
		return ret;
	}

	FUNC6(&idev->dev);
	idev->dev.devt = FUNC0(uio_major, idev->minor);
	idev->dev.class = &uio_class;
	idev->dev.parent = parent;
	idev->dev.release = uio_device_release;
	FUNC2(&idev->dev, idev);

	ret = FUNC3(&idev->dev, "uio%d", idev->minor);
	if (ret)
		goto err_device_create;

	ret = FUNC4(&idev->dev);
	if (ret)
		goto err_device_create;

	ret = FUNC13(idev);
	if (ret)
		goto err_uio_dev_add_attributes;

	info->uio_dev = idev;

	if (info->irq && (info->irq != UIO_IRQ_CUSTOM)) {
		/*
		 * Note that we deliberately don't use devm_request_irq
		 * here. The parent module can unregister the UIO device
		 * and call pci_disable_msi, which requires that this
		 * irq has been freed. However, the device may have open
		 * FDs at the time of unregister and therefore may not be
		 * freed until they are released.
		 */
		ret = FUNC12(info->irq, uio_interrupt,
				  info->irq_flags, info->name, idev);
		if (ret) {
			info->uio_dev = NULL;
			goto err_request_irq;
		}
	}

	return 0;

err_request_irq:
	FUNC14(idev);
err_uio_dev_add_attributes:
	FUNC5(&idev->dev);
err_device_create:
	FUNC15(idev);
	FUNC11(&idev->dev);
	return ret;
}