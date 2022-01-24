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
struct pinctrl_dev {int dummy; } ;
struct gemini_pmx {scalar_t__ is_3516; scalar_t__ is_3512; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gemini_3512_pin_groups ; 
 int /*<<< orphan*/  gemini_3516_pin_groups ; 
 struct gemini_pmx* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev)
{
	struct gemini_pmx *pmx = FUNC1(pctldev);

	if (pmx->is_3512)
		return FUNC0(gemini_3512_pin_groups);
	if (pmx->is_3516)
		return FUNC0(gemini_3516_pin_groups);
	return 0;
}