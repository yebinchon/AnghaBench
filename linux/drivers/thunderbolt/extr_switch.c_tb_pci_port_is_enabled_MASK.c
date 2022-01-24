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
 int /*<<< orphan*/  TB_CFG_PORT ; 
 int TB_PCI_EN ; 
 scalar_t__ FUNC0 (struct tb_port*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool FUNC1(struct tb_port *port)
{
	u32 data;

	if (FUNC0(port, &data, TB_CFG_PORT, port->cap_adap, 1))
		return false;

	return !!(data & TB_PCI_EN);
}