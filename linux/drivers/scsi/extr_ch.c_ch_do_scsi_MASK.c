#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_sense_hdr {int sense_key; } ;
struct TYPE_3__ {int unit_attention; int /*<<< orphan*/  name; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ scsi_changer ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 scalar_t__ DRIVER_SENSE ; 
 int HZ ; 
 unsigned char INITIALIZE_ELEMENT_STATUS ; 
 int /*<<< orphan*/  MAX_RETRIES ; 
#define  UNIT_ATTENTION 128 
 int FUNC0 (struct scsi_sense_hdr*) ; 
 scalar_t__ debug ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char*,int,void*,unsigned int,struct scsi_sense_hdr*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_sense_hdr*) ; 
 int timeout_init ; 
 int timeout_move ; 

__attribute__((used)) static int
FUNC4(scsi_changer *ch, unsigned char *cmd, int cmd_len,
	   void *buffer, unsigned buflength,
	   enum dma_data_direction direction)
{
	int errno, retries = 0, timeout, result;
	struct scsi_sense_hdr sshdr;

	timeout = (cmd[0] == INITIALIZE_ELEMENT_STATUS)
		? timeout_init : timeout_move;

 retry:
	errno = 0;
	result = FUNC2(ch->device, cmd, direction, buffer,
				  buflength, &sshdr, timeout * HZ,
				  MAX_RETRIES, NULL);

	if (FUNC1(result) == DRIVER_SENSE) {
		if (debug)
			FUNC3(ch->device, ch->name, &sshdr);
		errno = FUNC0(&sshdr);

		switch(sshdr.sense_key) {
		case UNIT_ATTENTION:
			ch->unit_attention = 1;
			if (retries++ < 3)
				goto retry;
			break;
		}
	}
	return errno;
}