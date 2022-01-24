#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * host_scribble; TYPE_2__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {TYPE_1__* device; } ;
struct TYPE_5__ {int /*<<< orphan*/  soft_reset; } ;
struct TYPE_4__ {int /*<<< orphan*/  soft_reset; } ;

/* Variables and functions */
 TYPE_3__* CURRENT_SC ; 
 int DID_RESET ; 
 struct scsi_cmnd* DISCONNECTED_SC ; 
 int /*<<< orphan*/  KERN_NOTICE ; 
 struct scsi_cmnd* FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd**,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC6(struct Scsi_Host *shpnt)
{
	struct scsi_cmnd *ptr;

	FUNC4(KERN_NOTICE, shpnt, "scsi reset in\n");

	ptr=DISCONNECTED_SC;
	while(ptr) {
		struct scsi_cmnd *next = FUNC0(ptr);

		if (!ptr->device->soft_reset) {
			FUNC3(&DISCONNECTED_SC, ptr);

			FUNC2(ptr->host_scribble);
			ptr->host_scribble=NULL;

			ptr->result =  DID_RESET << 16;
			ptr->scsi_done(ptr);
		}

		ptr = next;
	}

	if(CURRENT_SC && !CURRENT_SC->device->soft_reset)
		FUNC1(shpnt, DID_RESET << 16 );
}