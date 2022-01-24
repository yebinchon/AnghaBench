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
struct cpcap_battery_ddata {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  CPCAP_REG_BPEOL ; 
 int /*<<< orphan*/  CPCAP_REG_BPEOL_BIT_BATTDETEN ; 
 int FUNC1 (struct platform_device*,struct cpcap_battery_ddata*,char const* const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
					 struct cpcap_battery_ddata *ddata)
{
	static const char * const cpcap_battery_irqs[] = {
		"eol", "lowbph", "lowbpl",
		"chrgcurr1", "battdetb"
	};
	int i, error;

	for (i = 0; i < FUNC0(cpcap_battery_irqs); i++) {
		error = FUNC1(pdev, ddata,
					       cpcap_battery_irqs[i]);
		if (error)
			return error;
	}

	/* Enable low battery interrupts for 3.3V high and 3.1V low */
	error = FUNC2(ddata->reg, CPCAP_REG_BPEOL,
				   0xffff,
				   CPCAP_REG_BPEOL_BIT_BATTDETEN);
	if (error)
		return error;

	return 0;
}