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
struct spmi_pmic_arb {int /*<<< orphan*/  domain; int /*<<< orphan*/  irq; } ;
struct spmi_controller {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct spmi_controller* FUNC2 (struct platform_device*) ; 
 struct spmi_pmic_arb* FUNC3 (struct spmi_controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct spmi_controller*) ; 
 int /*<<< orphan*/  FUNC5 (struct spmi_controller*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct spmi_controller *ctrl = FUNC2(pdev);
	struct spmi_pmic_arb *pmic_arb = FUNC3(ctrl);
	FUNC5(ctrl);
	FUNC1(pmic_arb->irq, NULL, NULL);
	FUNC0(pmic_arb->domain);
	FUNC4(ctrl);
	return 0;
}