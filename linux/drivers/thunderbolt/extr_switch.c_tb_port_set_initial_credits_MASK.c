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
struct tb_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_PORT ; 
 int TB_PORT_LCA_MASK ; 
 int TB_PORT_LCA_SHIFT ; 
 int FUNC0 (struct tb_port*,int*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct tb_port*,int*,int /*<<< orphan*/ ,int,int) ; 

int FUNC2(struct tb_port *port, u32 credits)
{
	u32 data;
	int ret;

	ret = FUNC0(port, &data, TB_CFG_PORT, 5, 1);
	if (ret)
		return ret;

	data &= ~TB_PORT_LCA_MASK;
	data |= (credits << TB_PORT_LCA_SHIFT) & TB_PORT_LCA_MASK;

	return FUNC1(port, &data, TB_CFG_PORT, 5, 1);
}