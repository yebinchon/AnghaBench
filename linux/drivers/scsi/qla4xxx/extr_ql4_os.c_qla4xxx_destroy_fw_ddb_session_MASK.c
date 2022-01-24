#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {int dummy; } ;
struct ddb_entry {scalar_t__ ddb_type; int /*<<< orphan*/  sess; TYPE_1__* conn; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;
struct TYPE_3__ {int /*<<< orphan*/  ep; } ;

/* Variables and functions */
 scalar_t__ FLASH_DDB ; 
 int MAX_DDB_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,struct ddb_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,struct ddb_entry*) ; 
 TYPE_2__ qla4xxx_iscsi_transport ; 
 struct ddb_entry* FUNC4 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct scsi_qla_host *ha)
{
	struct ddb_entry *ddb_entry;
	int idx;

	for (idx = 0; idx < MAX_DDB_ENTRIES; idx++) {

		ddb_entry = FUNC4(ha, idx);
		if ((ddb_entry != NULL) &&
		    (ddb_entry->ddb_type == FLASH_DDB)) {

			FUNC2(ha, ddb_entry);
			/*
			 * we have decremented the reference count of the driver
			 * when we setup the session to have the driver unload
			 * to be seamless without actually destroying the
			 * session
			 **/
			FUNC5(qla4xxx_iscsi_transport.owner);
			FUNC0(ddb_entry->conn->ep);
			FUNC3(ha, ddb_entry);
			FUNC1(ddb_entry->sess);
		}
	}
}