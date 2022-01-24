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
struct mtk_eint {int /*<<< orphan*/  cur_mask; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_eint*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct mtk_eint *eint)
{
	FUNC0(eint, eint->base, eint->cur_mask);

	return 0;
}