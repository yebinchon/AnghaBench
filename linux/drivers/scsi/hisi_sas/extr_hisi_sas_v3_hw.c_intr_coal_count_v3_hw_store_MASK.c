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
typedef  scalar_t__ u32 ;
struct hisi_hba {scalar_t__ intr_coal_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 size_t EINVAL ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (char const*,int,scalar_t__*) ; 
 struct hisi_hba* FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute
		*attr, const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct hisi_hba *hisi_hba = FUNC5(shost);
	u32 intr_coal_count;
	int ret;

	ret = FUNC4(buf, 10, &intr_coal_count);
	if (ret) {
		FUNC3(dev, "Input data of interrupt coalesce unmatch\n");
		return -EINVAL;
	}

	if (intr_coal_count >= FUNC0(8)) {
		FUNC3(dev, "intr_coal_count must be less than 2^8!\n");
		return -EINVAL;
	}

	hisi_hba->intr_coal_count = intr_coal_count;

	FUNC2(hisi_hba);

	return count;
}