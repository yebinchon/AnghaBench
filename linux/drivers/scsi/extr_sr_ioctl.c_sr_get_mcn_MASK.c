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
struct packet_command {int* cmd; char* buffer; int buflen; int /*<<< orphan*/  timeout; int /*<<< orphan*/  data_direction; } ;
struct cdrom_mcn {scalar_t__* medium_catalog_number; } ;
struct cdrom_device_info {int /*<<< orphan*/ * handle; } ;
typedef  int /*<<< orphan*/  Scsi_CD ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int GPCMD_READ_SUBCHANNEL ; 
 int /*<<< orphan*/  IOCTL_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct packet_command*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct packet_command*) ; 

int FUNC6(struct cdrom_device_info *cdi, struct cdrom_mcn *mcn)
{
	Scsi_CD *cd = cdi->handle;
	struct packet_command cgc;
	char *buffer = FUNC2(32, GFP_KERNEL | FUNC0(cd));
	int result;

	if (!buffer)
		return -ENOMEM;

	FUNC4(&cgc, 0, sizeof(struct packet_command));
	cgc.cmd[0] = GPCMD_READ_SUBCHANNEL;
	cgc.cmd[2] = 0x40;	/* I do want the subchannel info */
	cgc.cmd[3] = 0x02;	/* Give me medium catalog number info */
	cgc.cmd[8] = 24;
	cgc.buffer = buffer;
	cgc.buflen = 24;
	cgc.data_direction = DMA_FROM_DEVICE;
	cgc.timeout = IOCTL_TIMEOUT;
	result = FUNC5(cd, &cgc);

	FUNC3(mcn->medium_catalog_number, buffer + 9, 13);
	mcn->medium_catalog_number[13] = 0;

	FUNC1(buffer);
	return result;
}