#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {scalar_t__ NumberOfPhyBlock; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;

/* Variables and functions */
 int BYTE_MASK ; 
 int MS_REG_OVR_BKST ; 
 int MS_STATUS_ERROR ; 
 int MS_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (struct ene_ub6250_info*) ; 
 int FUNC1 (struct us_data*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct us_data *us, u16 phyblk)
{
	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

	if (phyblk >= info->MS_Lib.NumberOfPhyBlock)
		return MS_STATUS_ERROR;

	FUNC2(us, phyblk);

	if (FUNC0(info))
		return FUNC1(us, phyblk, 0, (u8)(~MS_REG_OVR_BKST & BYTE_MASK));

	return MS_STATUS_SUCCESS;
}