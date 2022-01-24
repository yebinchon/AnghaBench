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

/* Variables and functions */
 int CDNS_MCP_FRAME_SHAPE_COL_MASK ; 
 int CDNS_MCP_FRAME_SHAPE_ROW_OFFSET ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static u32 FUNC2(int n_rows, int n_cols)
{
	u32 val;
	int c;
	int r;

	r = FUNC1(n_rows);
	c = FUNC0(n_cols) & CDNS_MCP_FRAME_SHAPE_COL_MASK;

	val = (r << CDNS_MCP_FRAME_SHAPE_ROW_OFFSET) | c;

	return val;
}