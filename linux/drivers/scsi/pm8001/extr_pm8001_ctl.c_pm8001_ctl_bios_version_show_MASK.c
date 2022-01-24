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
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_ioctl_payload {int minor_function; int length; int* func_specific; scalar_t__ offset; } ;
struct pm8001_hba_info {int /*<<< orphan*/ * nvmd_completion; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {scalar_t__ (* get_nvmd_req ) (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ;} ;

/* Variables and functions */
 int BIOSOFFSET ; 
 int BIOS_OFFSET_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* PM8001_CHIP_DISP ; 
 struct sas_ha_struct* FUNC1 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  completion ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (struct pm8001_hba_info*,struct pm8001_ioctl_payload*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *cdev,
	struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC2(cdev);
	struct sas_ha_struct *sha = FUNC1(shost);
	struct pm8001_hba_info *pm8001_ha = sha->lldd_ha;
	char *str = buf;
	int bios_index;
	FUNC0(completion);
	struct pm8001_ioctl_payload payload;

	pm8001_ha->nvmd_completion = &completion;
	payload.minor_function = 7;
	payload.offset = 0;
	payload.length = 4096;
	payload.func_specific = FUNC4(4096, GFP_KERNEL);
	if (!payload.func_specific)
		return -ENOMEM;
	if (PM8001_CHIP_DISP->get_nvmd_req(pm8001_ha, &payload)) {
		FUNC3(payload.func_specific);
		return -ENOMEM;
	}
	FUNC7(&completion);
	for (bios_index = BIOSOFFSET; bios_index < BIOS_OFFSET_LIMIT;
		bios_index++)
		str += FUNC5(str, "%c",
			*(payload.func_specific+bios_index));
	FUNC3(payload.func_specific);
	return str - buf;
}