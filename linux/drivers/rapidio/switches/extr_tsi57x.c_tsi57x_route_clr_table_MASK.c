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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct rio_mport {scalar_t__ sys_size; } ;

/* Variables and functions */
 scalar_t__ RIO_GLOBAL_TABLE ; 
 int RIO_INVALID_ROUTE ; 
 int /*<<< orphan*/  SPBC_ROUTE_CFG_DESTID ; 
 int /*<<< orphan*/  SPBC_ROUTE_CFG_PORT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_mport*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct rio_mport *mport, u16 destid, u8 hopcount,
		       u16 table)
{
	u32 route_idx;
	u32 lut_size;

	lut_size = (mport->sys_size) ? 0x1ff : 0xff;

	if (table == RIO_GLOBAL_TABLE) {
		FUNC2(mport, destid, hopcount,
					  SPBC_ROUTE_CFG_DESTID, 0x80000000);
		for (route_idx = 0; route_idx <= lut_size; route_idx++)
			FUNC2(mport, destid, hopcount,
						  SPBC_ROUTE_CFG_PORT,
						  RIO_INVALID_ROUTE);
	} else {
		FUNC2(mport, destid, hopcount,
				FUNC0(table), 0x80000000);
		for (route_idx = 0; route_idx <= lut_size; route_idx++)
			FUNC2(mport, destid, hopcount,
				FUNC1(table) , RIO_INVALID_ROUTE);
	}

	return 0;
}