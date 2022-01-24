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
typedef  scalar_t__ uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ulp_supported; } ;
struct beiscsi_hba {TYPE_1__ fw_config; } ;
struct Scsi_Host {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int FUNC0 (struct beiscsi_hba*,scalar_t__) ; 
 scalar_t__ BEISCSI_ULP_COUNT ; 
 scalar_t__ PAGE_SIZE ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 struct beiscsi_hba* FUNC2 (struct Scsi_Host*) ; 
 scalar_t__ FUNC3 (char*,scalar_t__,char*,scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__,void*) ; 

ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
		       char *buf)
{
	struct Scsi_Host *shost = FUNC1(dev);
	struct beiscsi_hba *phba = FUNC2(shost);
	uint16_t ulp_num, len = 0;

	for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++) {
		if (FUNC4(ulp_num, (void *)&phba->fw_config.ulp_supported))
			len += FUNC3(buf+len, PAGE_SIZE - len,
					"ULP%d : %d\n", ulp_num,
					FUNC0(phba, ulp_num));
		else
			len += FUNC3(buf+len, PAGE_SIZE - len,
					"ULP%d : %d\n", ulp_num, 0);
	}

	return len;
}