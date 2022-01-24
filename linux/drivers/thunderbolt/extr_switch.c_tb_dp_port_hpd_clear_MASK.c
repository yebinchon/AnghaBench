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
struct tb_port {scalar_t__ cap_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_PORT ; 
 int /*<<< orphan*/  TB_DP_HPDC ; 
 int FUNC0 (struct tb_port*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC1 (struct tb_port*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC2(struct tb_port *port)
{
	u32 data;
	int ret;

	ret = FUNC0(port, &data, TB_CFG_PORT, port->cap_adap + 3, 1);
	if (ret)
		return ret;

	data |= TB_DP_HPDC;
	return FUNC1(port, &data, TB_CFG_PORT, port->cap_adap + 3, 1);
}