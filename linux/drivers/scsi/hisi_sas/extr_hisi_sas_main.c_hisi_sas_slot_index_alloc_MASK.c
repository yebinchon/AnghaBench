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
struct scsi_cmnd {TYPE_1__* request; } ;
struct hisi_hba {int slot_index_count; int last_slot_index; int /*<<< orphan*/  lock; void* slot_index_tags; } ;
struct TYPE_2__ {int tag; } ;

/* Variables and functions */
 int HISI_SAS_UNRESERVED_IPTT ; 
 int SAS_QUEUE_FULL ; 
 int FUNC0 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct hisi_hba *hisi_hba,
				     struct scsi_cmnd *scsi_cmnd)
{
	int index;
	void *bitmap = hisi_hba->slot_index_tags;
	unsigned long flags;

	if (scsi_cmnd)
		return scsi_cmnd->request->tag;

	FUNC2(&hisi_hba->lock, flags);
	index = FUNC0(bitmap, hisi_hba->slot_index_count,
				   hisi_hba->last_slot_index + 1);
	if (index >= hisi_hba->slot_index_count) {
		index = FUNC0(bitmap,
				hisi_hba->slot_index_count,
				HISI_SAS_UNRESERVED_IPTT);
		if (index >= hisi_hba->slot_index_count) {
			FUNC3(&hisi_hba->lock, flags);
			return -SAS_QUEUE_FULL;
		}
	}
	FUNC1(hisi_hba, index);
	hisi_hba->last_slot_index = index;
	FUNC3(&hisi_hba->lock, flags);

	return index;
}