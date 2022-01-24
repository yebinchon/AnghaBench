#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_conn_info {int id_irq; int vbus_irq; void* role_sw; void* vbus_gpiod; void* id_gpiod; void* vbus; int /*<<< orphan*/  dw_det; int /*<<< orphan*/  debounce_jiffies; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  USB_CONN_IRQF ; 
 int /*<<< orphan*/  USB_GPIO_DEB_MS ; 
 int /*<<< orphan*/  USB_GPIO_DEB_US ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct usb_conn_info* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct device*,char*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_conn_info*) ; 
 int FUNC8 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct usb_conn_info*) ; 
 int /*<<< orphan*/  usb_conn_detect_cable ; 
 int /*<<< orphan*/  usb_conn_isr ; 
 int /*<<< orphan*/  FUNC12 (struct usb_conn_info*,int /*<<< orphan*/ ) ; 
 void* FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct usb_conn_info *info;
	int ret = 0;

	info = FUNC5(dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->dev = dev;
	info->id_gpiod = FUNC4(dev, "id", GPIOD_IN);
	if (FUNC1(info->id_gpiod))
		return FUNC2(info->id_gpiod);

	info->vbus_gpiod = FUNC4(dev, "vbus", GPIOD_IN);
	if (FUNC1(info->vbus_gpiod))
		return FUNC2(info->vbus_gpiod);

	if (!info->id_gpiod && !info->vbus_gpiod) {
		FUNC3(dev, "failed to get gpios\n");
		return -ENODEV;
	}

	if (info->id_gpiod)
		ret = FUNC8(info->id_gpiod, USB_GPIO_DEB_US);
	if (!ret && info->vbus_gpiod)
		ret = FUNC8(info->vbus_gpiod, USB_GPIO_DEB_US);
	if (ret < 0)
		info->debounce_jiffies = FUNC10(USB_GPIO_DEB_MS);

	FUNC0(&info->dw_det, usb_conn_detect_cable);

	info->vbus = FUNC6(dev, "vbus");
	if (FUNC1(info->vbus)) {
		FUNC3(dev, "failed to get vbus\n");
		return FUNC2(info->vbus);
	}

	info->role_sw = FUNC13(dev);
	if (FUNC1(info->role_sw)) {
		if (FUNC2(info->role_sw) != -EPROBE_DEFER)
			FUNC3(dev, "failed to get role switch\n");

		return FUNC2(info->role_sw);
	}

	if (info->id_gpiod) {
		info->id_irq = FUNC9(info->id_gpiod);
		if (info->id_irq < 0) {
			FUNC3(dev, "failed to get ID IRQ\n");
			ret = info->id_irq;
			goto put_role_sw;
		}

		ret = FUNC7(dev, info->id_irq, NULL,
						usb_conn_isr, USB_CONN_IRQF,
						pdev->name, info);
		if (ret < 0) {
			FUNC3(dev, "failed to request ID IRQ\n");
			goto put_role_sw;
		}
	}

	if (info->vbus_gpiod) {
		info->vbus_irq = FUNC9(info->vbus_gpiod);
		if (info->vbus_irq < 0) {
			FUNC3(dev, "failed to get VBUS IRQ\n");
			ret = info->vbus_irq;
			goto put_role_sw;
		}

		ret = FUNC7(dev, info->vbus_irq, NULL,
						usb_conn_isr, USB_CONN_IRQF,
						pdev->name, info);
		if (ret < 0) {
			FUNC3(dev, "failed to request VBUS IRQ\n");
			goto put_role_sw;
		}
	}

	FUNC11(pdev, info);

	/* Perform initial detection */
	FUNC12(info, 0);

	return 0;

put_role_sw:
	FUNC14(info->role_sw);
	return ret;
}