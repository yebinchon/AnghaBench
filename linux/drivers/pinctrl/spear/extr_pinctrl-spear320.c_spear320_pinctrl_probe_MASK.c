#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_4__ {int modes_supported; int /*<<< orphan*/  ngpio_pingroups; int /*<<< orphan*/  gpio_pingroups; void* npmx_modes; void* pmx_modes; void* nfunctions; void* functions; void* ngroups; void* groups; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  PMX_CONFIG_REG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* spear320_functions ; 
 void* spear320_pingroups ; 
 void* spear320_pmx_modes ; 
 TYPE_1__ spear3xx_machdata ; 
 int FUNC3 (struct platform_device*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	int ret;

	spear3xx_machdata.groups = spear320_pingroups;
	spear3xx_machdata.ngroups = FUNC0(spear320_pingroups);
	spear3xx_machdata.functions = spear320_functions;
	spear3xx_machdata.nfunctions = FUNC0(spear320_functions);

	spear3xx_machdata.modes_supported = true;
	spear3xx_machdata.pmx_modes = spear320_pmx_modes;
	spear3xx_machdata.npmx_modes = FUNC0(spear320_pmx_modes);

	FUNC1(&spear3xx_machdata, PMX_CONFIG_REG);
	FUNC2(spear3xx_machdata.gpio_pingroups,
			spear3xx_machdata.ngpio_pingroups, PMX_CONFIG_REG);

	ret = FUNC3(pdev, &spear3xx_machdata);
	if (ret)
		return ret;

	return 0;
}