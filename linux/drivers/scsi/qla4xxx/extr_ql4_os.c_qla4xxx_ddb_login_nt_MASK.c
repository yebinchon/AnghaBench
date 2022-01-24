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
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct dev_db_entry {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  RESET_ADAPTER ; 
 int FUNC0 (struct scsi_qla_host*,struct dev_db_entry*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct scsi_qla_host*,struct dev_db_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct scsi_qla_host *ha,
				struct dev_db_entry *fw_ddb_entry,
				uint16_t idx)
{
	int ret = QLA_ERROR;

	ret = FUNC0(ha, fw_ddb_entry, NULL);
	if (ret != QLA_SUCCESS)
		ret = FUNC1(ha, fw_ddb_entry, RESET_ADAPTER,
					      idx);
	else
		ret = -EPERM;

	return ret;
}