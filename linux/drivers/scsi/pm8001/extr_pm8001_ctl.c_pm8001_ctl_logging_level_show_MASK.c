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
struct sas_ha_struct {struct pm8001_hba_info* lldd_ha; } ;
struct pm8001_hba_info {int logging_level; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct sas_ha_struct* FUNC0 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *cdev,
	struct device_attribute *attr, char *buf)
{
	struct Scsi_Host *shost = FUNC1(cdev);
	struct sas_ha_struct *sha = FUNC0(shost);
	struct pm8001_hba_info *pm8001_ha = sha->lldd_ha;

	return FUNC2(buf, PAGE_SIZE, "%08xh\n", pm8001_ha->logging_level);
}