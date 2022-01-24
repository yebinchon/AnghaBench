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
struct scsi_device {scalar_t__ channel; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;struct scsi_device* device; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int DID_BAD_TARGET ; 
 int FUNC0 (struct Scsi_Host*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (struct Scsi_Host*) ; 
 int FUNC2 (struct Scsi_Host*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shost,
		struct scsi_cmnd *scmd)
{
	struct scsi_device *sdev = scmd->device;

	if (sdev->channel > FUNC1(shost)) {
		scmd->result = (DID_BAD_TARGET << 16);
		scmd->scsi_done(scmd);
		return 0;
	}
	if (sdev->channel == FUNC1(shost))
		return FUNC0(shost, scmd);

	return FUNC2(shost, scmd);
}