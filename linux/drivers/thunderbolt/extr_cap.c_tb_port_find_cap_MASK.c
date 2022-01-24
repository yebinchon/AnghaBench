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
struct tb_port {int dummy; } ;
typedef  enum tb_port_cap { ____Placeholder_tb_port_cap } tb_port_cap ;

/* Variables and functions */
 int FUNC0 (struct tb_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_port*) ; 
 int FUNC2 (struct tb_port*,int) ; 

int FUNC3(struct tb_port *port, enum tb_port_cap cap)
{
	int ret;

	ret = FUNC2(port, true);
	if (ret)
		return ret;

	ret = FUNC0(port, cap);

	FUNC1(port);
	FUNC2(port, false);

	return ret;
}