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
 int /*<<< orphan*/  TIMEOUT_100_MS ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,int,int*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct scsi_qla_host *vha, uint32_t addr1,
	uint32_t mask)
{
	unsigned long timeout;
	uint32_t temp;

	/* jiffies after 100ms */
	timeout = jiffies + FUNC0(TIMEOUT_100_MS);
	do {
		FUNC2(vha, addr1, &temp);
		if ((temp & mask) != 0)
			break;
		if (FUNC3(jiffies, timeout)) {
			FUNC1(ql_log_warn, vha, 0xb151,
				"Error in processing rdmdio entry\n");
			return -1;
		}
	} while (1);

	return 0;
}