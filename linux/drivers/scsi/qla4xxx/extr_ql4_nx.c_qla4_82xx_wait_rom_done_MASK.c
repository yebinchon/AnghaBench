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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  QLA82XX_ROMUSB_GLB_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 long FUNC1 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 long rom_max_timeout ; 

__attribute__((used)) static int
FUNC2(struct scsi_qla_host *ha)
{
	long timeout = 0;
	long done = 0 ;

	while (done == 0) {
		done = FUNC1(ha, QLA82XX_ROMUSB_GLB_STATUS);
		done &= 2;
		timeout++;
		if (timeout >= rom_max_timeout) {
			FUNC0("%s: Timeout reached  waiting for rom done",
					DRIVER_NAME);
			return -1;
		}
	}
	return 0;
}