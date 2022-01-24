#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int dummy; } ;
struct CommandControlBlock {scalar_t__ startdone; TYPE_1__* pcmd; } ;
struct AdapterControlBlock {int maxFreeCCB; int /*<<< orphan*/  host; struct CommandControlBlock** pccb_pool; scalar_t__ device_map; } ;
struct TYPE_2__ {int result; int /*<<< orphan*/  (* scsi_done ) (TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ ARCMSR_CCB_START ; 
 int ARCMSR_MAX_TARGETID ; 
 int ARCMSR_MAX_TARGETLUN ; 
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct CommandControlBlock*) ; 
 struct scsi_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct AdapterControlBlock *acb)
{
	char *acb_dev_map = (char *)acb->device_map;
	int target, lun, i;
	struct scsi_device *psdev;
	struct CommandControlBlock *ccb;
	char temp;

	for (i = 0; i < acb->maxFreeCCB; i++) {
		ccb = acb->pccb_pool[i];
		if (ccb->startdone == ARCMSR_CCB_START) {
			ccb->pcmd->result = DID_NO_CONNECT << 16;
			FUNC0(ccb);
			ccb->pcmd->scsi_done(ccb->pcmd);
		}
	}
	for (target = 0; target < ARCMSR_MAX_TARGETID; target++) {
		temp = *acb_dev_map;
		if (temp) {
			for (lun = 0; lun < ARCMSR_MAX_TARGETLUN; lun++) {
				if (temp & 1) {
					psdev = FUNC1(acb->host,
						0, target, lun);
					if (psdev != NULL) {
						FUNC3(psdev);
						FUNC2(psdev);
					}
				}
				temp >>= 1;
			}
			*acb_dev_map = 0;
		}
		acb_dev_map++;
	}
}