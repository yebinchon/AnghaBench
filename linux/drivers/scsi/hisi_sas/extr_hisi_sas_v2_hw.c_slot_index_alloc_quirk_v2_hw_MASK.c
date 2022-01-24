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
struct hisi_sas_device {int sata_idx; } ;
struct hisi_hba {int slot_index_count; int /*<<< orphan*/  lock; void* slot_index_tags; } ;
struct domain_device {struct hisi_sas_device* lldd_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int HISI_MAX_SATA_SUPPORT_V2_HW ; 
 int SAS_QUEUE_FULL ; 
 int FUNC0 (struct domain_device*) ; 
 int FUNC1 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct hisi_hba *hisi_hba,
			     struct domain_device *device)
{
	int sata_dev = FUNC0(device);
	void *bitmap = hisi_hba->slot_index_tags;
	struct hisi_sas_device *sas_dev = device->lldd_dev;
	int sata_idx = sas_dev->sata_idx;
	int start, end;
	unsigned long flags;

	if (!sata_dev) {
		/*
		 * STP link SoC bug workaround: index starts from 1.
		 * additionally, we can only allocate odd IPTT(1~4095)
		 * for SAS/SMP device.
		 */
		start = 1;
		end = hisi_hba->slot_index_count;
	} else {
		if (sata_idx >= HISI_MAX_SATA_SUPPORT_V2_HW)
			return -EINVAL;

		/*
		 * For SATA device: allocate even IPTT in this interval
		 * [64*(sata_idx+1), 64*(sata_idx+2)], then each SATA device
		 * own 32 IPTTs. IPTT 0 shall not be used duing to STP link
		 * SoC bug workaround. So we ignore the first 32 even IPTTs.
		 */
		start = 64 * (sata_idx + 1);
		end = 64 * (sata_idx + 2);
	}

	FUNC3(&hisi_hba->lock, flags);
	while (1) {
		start = FUNC1(bitmap,
					hisi_hba->slot_index_count, start);
		if (start >= end) {
			FUNC4(&hisi_hba->lock, flags);
			return -SAS_QUEUE_FULL;
		}
		/*
		  * SAS IPTT bit0 should be 1, and SATA IPTT bit0 should be 0.
		  */
		if (sata_dev ^ (start & 1))
			break;
		start++;
	}

	FUNC2(start, bitmap);
	FUNC4(&hisi_hba->lock, flags);
	return start;
}