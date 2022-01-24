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
struct packet_command {int* cmd; int /*<<< orphan*/  timeout; int /*<<< orphan*/  data_direction; } ;
struct cdrom_device_info {int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  Scsi_CD ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_NONE ; 
 int GPCMD_START_STOP_UNIT ; 
 int /*<<< orphan*/  IOCTL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct packet_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct packet_command*) ; 

int FUNC2(struct cdrom_device_info *cdi, int pos)
{
	Scsi_CD *cd = cdi->handle;
	struct packet_command cgc;

	FUNC0(&cgc, 0, sizeof(struct packet_command));
	cgc.cmd[0] = GPCMD_START_STOP_UNIT;
	cgc.cmd[4] = (pos == 0) ? 0x03 /* close */ : 0x02 /* eject */ ;
	cgc.data_direction = DMA_NONE;
	cgc.timeout = IOCTL_TIMEOUT;
	return FUNC1(cd, &cgc);
}