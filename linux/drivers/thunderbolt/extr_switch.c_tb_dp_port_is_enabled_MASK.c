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
struct tb_port {int /*<<< orphan*/  cap_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  TB_CFG_PORT ; 
 int TB_DP_AUX_EN ; 
 int TB_DP_VIDEO_EN ; 
 scalar_t__ FUNC1 (struct tb_port*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC2(struct tb_port *port)
{
	u32 data[2];

	if (FUNC1(port, data, TB_CFG_PORT, port->cap_adap,
			 FUNC0(data)))
		return false;

	return !!(data[0] & (TB_DP_VIDEO_EN | TB_DP_AUX_EN));
}