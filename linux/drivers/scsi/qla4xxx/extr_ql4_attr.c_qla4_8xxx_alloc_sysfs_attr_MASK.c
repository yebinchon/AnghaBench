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
struct sysfs_entry {scalar_t__ name; int /*<<< orphan*/  attr; } ;
struct scsi_qla_host {struct Scsi_Host* host; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 struct sysfs_entry* bin_file_entries ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*,scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct scsi_qla_host *ha)
{
	struct Scsi_Host *host = ha->host;
	struct sysfs_entry *iter;
	int ret;

	for (iter = bin_file_entries; iter->name; iter++) {
		ret = FUNC1(&host->shost_gendev.kobj,
					    iter->attr);
		if (ret)
			FUNC0(KERN_ERR, ha,
				   "Unable to create sysfs %s binary attribute (%d).\n",
				   iter->name, ret);
	}
}