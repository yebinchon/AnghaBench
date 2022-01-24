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
struct cpcap_charger_ddata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cpcap_charger_irqs ; 
 int FUNC1 (struct platform_device*,struct cpcap_charger_ddata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev,
				     struct cpcap_charger_ddata *ddata)
{
	int i, error;

	for (i = 0; i < FUNC0(cpcap_charger_irqs); i++) {
		error = FUNC1(pdev, ddata, cpcap_charger_irqs[i]);
		if (error)
			return error;
	}

	return 0;
}