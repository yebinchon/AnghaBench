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
struct us_data {scalar_t__ extra; } ;
struct isd200_info {int /*<<< orphan*/ * ATARegs; int /*<<< orphan*/  RegsBuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_READ_STATUS ; 
 size_t ATA_REG_ERROR_OFFSET ; 
 int ISD200_ERROR ; 
 int ISD200_GOOD ; 
 int ISD200_TRANSPORT_GOOD ; 
 int FUNC0 (struct us_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,char*,...) ; 

__attribute__((used)) static int FUNC3( struct us_data *us )
{
	struct isd200_info *info = (struct isd200_info *)us->extra;
	int retStatus = ISD200_GOOD;
	int transferStatus;

	FUNC2(us, "Entering isd200_IssueATAReadRegs\n");

	transferStatus = FUNC0( us, ACTION_READ_STATUS,
				    info->RegsBuf, sizeof(info->ATARegs) );
	if (transferStatus != ISD200_TRANSPORT_GOOD) {
		FUNC2(us, "   Error reading ATA registers\n");
		retStatus = ISD200_ERROR;
	} else {
		FUNC1(info->ATARegs, info->RegsBuf, sizeof(info->ATARegs));
		FUNC2(us, "   Got ATA Register[ATA_REG_ERROR_OFFSET] = 0x%x\n",
			     info->ATARegs[ATA_REG_ERROR_OFFSET]);
	}

	return retStatus;
}