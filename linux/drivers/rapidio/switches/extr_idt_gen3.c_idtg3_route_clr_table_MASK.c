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
struct rio_mport {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ RIO_GLOBAL_TABLE ; 
 int /*<<< orphan*/  RIO_RT_ENTRY_DROP_PKT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RIO_SWP_INFO_CAR ; 
 int FUNC3 (struct rio_mport*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct rio_mport*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct rio_mport *mport, u16 destid, u8 hopcount,
		       u16 table)
{
	u32 i;
	u32 rval;
	int err;

	if (table == RIO_GLOBAL_TABLE) {
		for (i = 0; i <= 0xff; i++) {
			err = FUNC4(mport, destid, hopcount,
						FUNC0(0, i),
						RIO_RT_ENTRY_DROP_PKT);
			if (err)
				break;
		}

		return err;
	}

	err = FUNC3(mport, destid, hopcount,
				       RIO_SWP_INFO_CAR, &rval);
	if (err)
		return err;

	if (table >= FUNC1(rval))
		return -EINVAL;

	for (i = 0; i <= 0xff; i++) {
		err = FUNC4(mport, destid, hopcount,
					FUNC2(table, 0, i),
					RIO_RT_ENTRY_DROP_PKT);
		if (err)
			break;
	}

	return err;
}