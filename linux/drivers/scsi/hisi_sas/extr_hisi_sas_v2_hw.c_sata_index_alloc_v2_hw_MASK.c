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
struct hisi_hba {void* sata_dev_bitmap; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int HISI_MAX_SATA_SUPPORT_V2_HW ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 unsigned int FUNC1 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,void*) ; 

__attribute__((used)) static bool FUNC3(struct hisi_hba *hisi_hba, int *idx)
{
	unsigned int index;
	struct device *dev = hisi_hba->dev;
	void *bitmap = hisi_hba->sata_dev_bitmap;

	index = FUNC1(bitmap, HISI_MAX_SATA_SUPPORT_V2_HW);
	if (index >= HISI_MAX_SATA_SUPPORT_V2_HW) {
		FUNC0(dev, "alloc sata index failed, index=%d\n", index);
		return false;
	}

	FUNC2(index, bitmap);
	*idx = index;
	return true;
}