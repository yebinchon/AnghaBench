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
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSI578_GLBL_ROUTE_BASE ; 
 int /*<<< orphan*/  TSI578_SP_MODE_GLBL ; 
 int TSI578_SP_MODE_LUT_512 ; 
 int /*<<< orphan*/  FUNC0 (struct rio_mport*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_mport*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct rio_mport *mport, u16 destid, u8 hopcount,
		       u8 sw_domain)
{
	u32 regval;

	/*
	 * Switch domain configuration operates only at global level
	 */

	/* Turn off flat (LUT_512) mode */
	FUNC0(mport, destid, hopcount,
				 TSI578_SP_MODE_GLBL, &regval);
	FUNC1(mport, destid, hopcount, TSI578_SP_MODE_GLBL,
				  regval & ~TSI578_SP_MODE_LUT_512);
	/* Set switch domain base */
	FUNC1(mport, destid, hopcount,
				  TSI578_GLBL_ROUTE_BASE,
				  (u32)(sw_domain << 24));
	return 0;
}