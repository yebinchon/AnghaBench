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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport {int dummy; } ;

/* Variables and functions */
 scalar_t__ RIO_ASM_INFO_CAR ; 
 scalar_t__ RIO_EXT_FTR_PTR_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_mport*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 

u32
FUNC3(struct rio_mport *port, int local, u16 destid,
		      u8 hopcount, u32 from)
{
	u32 reg_val;

	if (from == 0) {
		if (local)
			FUNC1(port, RIO_ASM_INFO_CAR,
						 &reg_val);
		else
			FUNC2(port, destid, hopcount,
						 RIO_ASM_INFO_CAR, &reg_val);
		return reg_val & RIO_EXT_FTR_PTR_MASK;
	} else {
		if (local)
			FUNC1(port, from, &reg_val);
		else
			FUNC2(port, destid, hopcount,
						 from, &reg_val);
		return FUNC0(reg_val);
	}
}