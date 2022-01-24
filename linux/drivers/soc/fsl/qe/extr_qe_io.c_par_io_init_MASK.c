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
struct resource {int /*<<< orphan*/  start; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_par_io_ports ; 
 int FUNC1 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  par_io ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 

int FUNC4(struct device_node *np)
{
	struct resource res;
	int ret;
	const u32 *num_ports;

	/* Map Parallel I/O ports registers */
	ret = FUNC1(np, 0, &res);
	if (ret)
		return ret;
	par_io = FUNC0(res.start, FUNC3(&res));

	num_ports = FUNC2(np, "num-ports", NULL);
	if (num_ports)
		num_par_io_ports = *num_ports;

	return 0;
}