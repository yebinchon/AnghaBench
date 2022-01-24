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
typedef  int uint32_t ;
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  TIMEOUT_100_MS ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static uint32_t FUNC4(struct scsi_qla_host *ha,
						    uint32_t addr1,
						    uint32_t addr2,
						    uint32_t addr3,
						    uint32_t mask)
{
	unsigned long timeout;
	uint32_t temp;
	uint32_t rval = QLA_SUCCESS;

	timeout = jiffies + FUNC0(TIMEOUT_100_MS);
	do {
		FUNC1(ha, addr1, addr3, mask, addr2, &temp);
		if ((temp & 0x1) != 1)
			break;
		if (FUNC3(jiffies, timeout)) {
			FUNC2(KERN_INFO, ha, "Error in processing mdiobus idle\n");
			return QLA_ERROR;
		}
	} while (1);

	return rval;
}