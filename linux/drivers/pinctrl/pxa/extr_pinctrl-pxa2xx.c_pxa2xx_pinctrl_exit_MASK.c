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
struct pxa_pinctrl {int /*<<< orphan*/  pctl_dev; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pxa_pinctrl* FUNC1 (struct platform_device*) ; 

int FUNC2(struct platform_device *pdev)
{
	struct pxa_pinctrl *pctl = FUNC1(pdev);

	FUNC0(pctl->pctl_dev);
	return 0;
}