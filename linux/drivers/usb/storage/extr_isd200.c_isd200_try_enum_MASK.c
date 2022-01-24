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
struct isd200_info {unsigned char* RegsBuf; unsigned char DeviceHead; int /*<<< orphan*/  DeviceFlags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_ENUM ; 
 int /*<<< orphan*/  ACTION_READ_STATUS ; 
 unsigned char ATA_ADDRESS_DEVHEAD_SLAVE ; 
 unsigned char ATA_ADDRESS_DEVHEAD_STD ; 
 unsigned char ATA_BUSY ; 
 unsigned char ATA_DF ; 
 unsigned char ATA_DRDY ; 
 unsigned char ATA_ERR ; 
 size_t ATA_REG_HCYL_OFFSET ; 
 size_t ATA_REG_LCYL_OFFSET ; 
 size_t ATA_REG_STATUS_OFFSET ; 
 int /*<<< orphan*/  DF_ATA_DEVICE ; 
 unsigned long HZ ; 
 unsigned long ISD200_ENUM_BSY_TIMEOUT ; 
 unsigned long ISD200_ENUM_DETECT_TIMEOUT ; 
 int ISD200_GOOD ; 
 int FUNC0 (struct us_data*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC1 (struct us_data*) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct us_data*,char*,...) ; 

__attribute__((used)) static int FUNC4(struct us_data *us, unsigned char master_slave,
			   int detect )
{
	int status = ISD200_GOOD;
	unsigned long endTime;
	struct isd200_info *info = (struct isd200_info *)us->extra;
	unsigned char *regs = info->RegsBuf;
	int recheckAsMaster = 0;

	if ( detect )
		endTime = jiffies + ISD200_ENUM_DETECT_TIMEOUT * HZ;
	else
		endTime = jiffies + ISD200_ENUM_BSY_TIMEOUT * HZ;

	/* loop until we detect !BSY or timeout */
	while(1) {

		status = FUNC0( us, ACTION_ENUM, NULL, master_slave );
		if ( status != ISD200_GOOD )
			break;

		status = FUNC0( us, ACTION_READ_STATUS, 
					regs, 8 );
		if ( status != ISD200_GOOD )
			break;

		if (!detect) {
			if (regs[ATA_REG_STATUS_OFFSET] & ATA_BUSY) {
				FUNC3(us, "   %s status is still BSY, try again...\n",
					     master_slave == ATA_ADDRESS_DEVHEAD_STD ?
					     "Master" : "Slave");
			} else {
				FUNC3(us, "   %s status !BSY, continue with next operation\n",
					     master_slave == ATA_ADDRESS_DEVHEAD_STD ?
					     "Master" : "Slave");
				break;
			}
		}
		/* check for ATA_BUSY and */
		/* ATA_DF (workaround ATA Zip drive) and */
		/* ATA_ERR (workaround for Archos CD-ROM) */
		else if (regs[ATA_REG_STATUS_OFFSET] &
			 (ATA_BUSY | ATA_DF | ATA_ERR)) {
			FUNC3(us, "   Status indicates it is not ready, try again...\n");
		}
		/* check for DRDY, ATA devices set DRDY after SRST */
		else if (regs[ATA_REG_STATUS_OFFSET] & ATA_DRDY) {
			FUNC3(us, "   Identified ATA device\n");
			info->DeviceFlags |= DF_ATA_DEVICE;
			info->DeviceHead = master_slave;
			break;
		} 
		/*
		 * check Cylinder High/Low to
		 * determine if it is an ATAPI device
		 */
		else if (regs[ATA_REG_HCYL_OFFSET] == 0xEB &&
			 regs[ATA_REG_LCYL_OFFSET] == 0x14) {
			/*
			 * It seems that the RICOH
			 * MP6200A CD/RW drive will
			 * report itself okay as a
			 * slave when it is really a
			 * master. So this check again
			 * as a master device just to
			 * make sure it doesn't report
			 * itself okay as a master also
			 */
			if ((master_slave & ATA_ADDRESS_DEVHEAD_SLAVE) &&
			    !recheckAsMaster) {
				FUNC3(us, "   Identified ATAPI device as slave.  Rechecking again as master\n");
				recheckAsMaster = 1;
				master_slave = ATA_ADDRESS_DEVHEAD_STD;
			} else {
				FUNC3(us, "   Identified ATAPI device\n");
				info->DeviceHead = master_slave;
			      
				status = FUNC1(us);
				break;
			}
		} else {
			FUNC3(us, "   Not ATA, not ATAPI - Weird\n");
			break;
		}

		/* check for timeout on this request */
		if (FUNC2(jiffies, endTime)) {
			if (!detect)
				FUNC3(us, "   BSY check timeout, just continue with next operation...\n");
			else
				FUNC3(us, "   Device detect timeout!\n");
			break;
		}
	}

	return status;
}