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
typedef  int /*<<< orphan*/  u32 ;
struct tb_switch {scalar_t__ cap_lc; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TB_CFG_SWITCH ; 
 scalar_t__ TB_LC_DESC ; 
 int FUNC0 (struct tb_switch*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC1(struct tb_switch *sw, u32 *desc)
{
	if (!sw->cap_lc)
		return -EINVAL;
	return FUNC0(sw, desc, TB_CFG_SWITCH, sw->cap_lc + TB_LC_DESC, 1);
}