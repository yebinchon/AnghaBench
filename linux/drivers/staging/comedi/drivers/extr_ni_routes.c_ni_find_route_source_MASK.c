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
typedef  int /*<<< orphan*/  u8 ;
struct ni_route_tables {int /*<<< orphan*/  route_values; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int NI_NAMES_BASE ; 
 int NI_NUM_NAMES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const) ; 

int FUNC3(const u8 src_sel_reg_value, int dest,
			 const struct ni_route_tables *tables)
{
	int src;

	dest = FUNC0(dest); /* subtract NI names offset */
	/* ensure we are not going to under/over run the route value table */
	if (dest < 0 || dest >= NI_NUM_NAMES)
		return -EINVAL;
	for (src = 0; src < NI_NUM_NAMES; ++src)
		if (FUNC1(tables->route_values, src, dest) ==
		    FUNC2(src_sel_reg_value))
			return src + NI_NAMES_BASE;
	return -EINVAL;
}