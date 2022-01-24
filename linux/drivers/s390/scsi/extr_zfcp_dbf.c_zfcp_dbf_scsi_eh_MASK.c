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
typedef  void* u32 ;
struct zfcp_dbf_scsi {int scsi_result; unsigned int scsi_id; struct zfcp_dbf_scsi* scsi_opcode; int /*<<< orphan*/  host_scribble; void* scsi_lun_64_hi; void* scsi_lun; int /*<<< orphan*/  fcp_rsp_info; int /*<<< orphan*/  scsi_allowed; int /*<<< orphan*/  scsi_retries; int /*<<< orphan*/  id; int /*<<< orphan*/  tag; } ;
struct zfcp_dbf {int /*<<< orphan*/  scsi_lock; int /*<<< orphan*/  scsi; struct zfcp_dbf_scsi scsi_buf; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 int ZFCP_DBF_INVALID_LUN ; 
 int /*<<< orphan*/  ZFCP_DBF_SCSI_CMND ; 
 int ZFCP_DBF_SCSI_OPCODE ; 
 int /*<<< orphan*/  ZFCP_DBF_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,struct zfcp_dbf_scsi*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_dbf_scsi*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(char *tag, struct zfcp_adapter *adapter,
		      unsigned int scsi_id, int ret)
{
	struct zfcp_dbf *dbf = adapter->dbf;
	struct zfcp_dbf_scsi *rec = &dbf->scsi_buf;
	unsigned long flags;
	static int const level = 1;

	if (FUNC6(!FUNC1(adapter->dbf->scsi, level)))
		return;

	FUNC4(&dbf->scsi_lock, flags);
	FUNC3(rec, 0, sizeof(*rec));

	FUNC2(rec->tag, tag, ZFCP_DBF_TAG_LEN);
	rec->id = ZFCP_DBF_SCSI_CMND;
	rec->scsi_result = ret; /* re-use field, int is 4 bytes and fits */
	rec->scsi_retries = ~0;
	rec->scsi_allowed = ~0;
	rec->fcp_rsp_info = ~0;
	rec->scsi_id = scsi_id;
	rec->scsi_lun = (u32)ZFCP_DBF_INVALID_LUN;
	rec->scsi_lun_64_hi = (u32)(ZFCP_DBF_INVALID_LUN >> 32);
	rec->host_scribble = ~0;
	FUNC3(rec->scsi_opcode, 0xff, ZFCP_DBF_SCSI_OPCODE);

	FUNC0(dbf->scsi, level, rec, sizeof(*rec));
	FUNC5(&dbf->scsi_lock, flags);
}