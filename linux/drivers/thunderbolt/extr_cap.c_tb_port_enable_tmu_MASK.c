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
typedef  int u32 ;
struct tb_switch {int dummy; } ;
struct tb_port {struct tb_switch* sw; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_SWITCH ; 
 int TMU_ACCESS_EN ; 
 int FUNC0 (struct tb_switch*,int*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct tb_switch*,int*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (struct tb_switch*) ; 
 scalar_t__ FUNC3 (struct tb_switch*) ; 

__attribute__((used)) static int FUNC4(struct tb_port *port, bool enable)
{
	struct tb_switch *sw = port->sw;
	u32 value, offset;
	int ret;

	/*
	 * Legacy devices need to have TMU access enabled before port
	 * space can be fully accessed.
	 */
	if (FUNC3(sw))
		offset = 0x26;
	else if (FUNC2(sw))
		offset = 0x2a;
	else
		return 0;

	ret = FUNC0(sw, &value, TB_CFG_SWITCH, offset, 1);
	if (ret)
		return ret;

	if (enable)
		value |= TMU_ACCESS_EN;
	else
		value &= ~TMU_ACCESS_EN;

	return FUNC1(sw, &value, TB_CFG_SWITCH, offset, 1);
}