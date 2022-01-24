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
struct platform_device {int dummy; } ;
struct dwc3 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
 int FUNC0 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct platform_device*,char*) ; 
 struct platform_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dwc3 *dwc)
{
	struct platform_device	*dwc3_pdev = FUNC2(dwc->dev);
	int irq;

	irq = FUNC1(dwc3_pdev, "host");
	if (irq > 0)
		goto out;

	if (irq == -EPROBE_DEFER)
		goto out;

	irq = FUNC1(dwc3_pdev, "dwc_usb3");
	if (irq > 0)
		goto out;

	if (irq == -EPROBE_DEFER)
		goto out;

	irq = FUNC0(dwc3_pdev, 0);
	if (irq > 0)
		goto out;

	if (!irq)
		irq = -EINVAL;

out:
	return irq;
}