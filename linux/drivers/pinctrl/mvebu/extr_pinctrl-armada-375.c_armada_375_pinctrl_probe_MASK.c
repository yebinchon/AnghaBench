#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct mvebu_pinctrl_soc_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mvebu_pinctrl_soc_info {void* ngpioranges; void* gpioranges; void* nmodes; void* modes; void* ncontrols; void* controls; scalar_t__ variant; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 struct mvebu_pinctrl_soc_info armada_375_pinctrl_info ; 
 void* mv88f6720_mpp_controls ; 
 void* mv88f6720_mpp_gpio_ranges ; 
 void* mv88f6720_mpp_modes ; 
 int FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct mvebu_pinctrl_soc_info *soc = &armada_375_pinctrl_info;

	soc->variant = 0; /* no variants for Armada 375 */
	soc->controls = mv88f6720_mpp_controls;
	soc->ncontrols = FUNC0(mv88f6720_mpp_controls);
	soc->modes = mv88f6720_mpp_modes;
	soc->nmodes = FUNC0(mv88f6720_mpp_modes);
	soc->gpioranges = mv88f6720_mpp_gpio_ranges;
	soc->ngpioranges = FUNC0(mv88f6720_mpp_gpio_ranges);

	pdev->dev.platform_data = soc;

	return FUNC1(pdev);
}