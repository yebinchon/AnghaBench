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
struct axp288_fg_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP288_FG_OCVH_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct axp288_fg_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct axp288_fg_info *info, int *vocv)
{
	int ret;

	ret = FUNC1(info, AXP288_FG_OCVH_REG);
	if (ret >= 0)
		*vocv = FUNC0(ret);

	return ret;
}