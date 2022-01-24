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
struct scsi_sense_hdr {int sense_key; int asc; } ;
struct scsi_disk {int dummy; } ;

/* Variables and functions */
#define  NOT_READY 129 
#define  UNIT_ATTENTION 128 
 int /*<<< orphan*/  FUNC0 (struct scsi_sense_hdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_disk*) ; 

__attribute__((used)) static int FUNC2(struct scsi_disk *sdkp,
			     struct scsi_sense_hdr *sshdr)
{
	if (!FUNC0(sshdr))
		return 0;

	/* not invoked for commands that could return deferred errors */
	switch (sshdr->sense_key) {
	case UNIT_ATTENTION:
	case NOT_READY:
		/* medium not present */
		if (sshdr->asc == 0x3A) {
			FUNC1(sdkp);
			return 1;
		}
	}
	return 0;
}