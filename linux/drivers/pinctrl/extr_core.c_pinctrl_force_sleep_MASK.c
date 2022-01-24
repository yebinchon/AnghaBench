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
struct pinctrl_dev {int /*<<< orphan*/  hog_sleep; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct pinctrl_dev *pctldev)
{
	if (!FUNC0(pctldev->p) && !FUNC0(pctldev->hog_sleep))
		return FUNC1(pctldev->p, pctldev->hog_sleep);
	return 0;
}