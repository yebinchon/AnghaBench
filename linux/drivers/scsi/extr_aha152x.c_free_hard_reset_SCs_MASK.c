#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/ * host_scribble; TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  commands; } ;
struct TYPE_3__ {int /*<<< orphan*/  soft_reset; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ FUNC1 (struct scsi_cmnd*) ; 
 struct scsi_cmnd* FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd**,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC6(struct Scsi_Host *shpnt,
				struct scsi_cmnd **SCs)
{
	struct scsi_cmnd *ptr;

	ptr=*SCs;
	while(ptr) {
		struct scsi_cmnd *next;

		if(FUNC1(ptr)) {
			next = FUNC2(ptr);
		} else {
			FUNC5(KERN_DEBUG, ptr,
				    "queue corrupted at %p\n", ptr);
			next = NULL;
		}

		if (!ptr->device->soft_reset) {
			FUNC4(SCs, ptr);
			FUNC0(shpnt)->commands--;
			FUNC3(ptr->host_scribble);
			ptr->host_scribble=NULL;
		}

		ptr = next;
	}
}