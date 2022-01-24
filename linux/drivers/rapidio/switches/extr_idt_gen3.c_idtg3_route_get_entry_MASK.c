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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct rio_mport {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int RIO_GLOBAL_TABLE ; 
 scalar_t__ RIO_INVALID_ROUTE ; 
 scalar_t__ RIO_RT_ENTRY_DROP_PKT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RIO_SWP_INFO_CAR ; 
 int FUNC3 (struct rio_mport*,int,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(struct rio_mport *mport, u16 destid, u8 hopcount,
		       u16 table, u16 route_destid, u8 *route_port)
{
	u32 rval;
	int err;

	if (route_destid > 0xFF)
		return -EINVAL;

	err = FUNC3(mport, destid, hopcount,
				       RIO_SWP_INFO_CAR, &rval);
	if (err)
		return err;

	/*
	 * This switch device does not have the dedicated global routing table.
	 * It is substituted by reading routing table of the ingress port of
	 * maintenance read requests.
	 */
	if (table == RIO_GLOBAL_TABLE)
		table = FUNC0(rval);
	else if (table >= FUNC1(rval))
		return -EINVAL;

	err = FUNC3(mport, destid, hopcount,
			FUNC2(table, 0, route_destid),
			&rval);
	if (err)
		return err;

	if (rval == RIO_RT_ENTRY_DROP_PKT)
		*route_port = RIO_INVALID_ROUTE;
	else
		*route_port = (u8)rval;

	return 0;
}