#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct zfcp_fc_wka_port {int /*<<< orphan*/  d_id; int /*<<< orphan*/  status; TYPE_1__* adapter; } ;
struct TYPE_5__ {int /*<<< orphan*/  rec_count; int /*<<< orphan*/  rec_action; int /*<<< orphan*/  rec_step; int /*<<< orphan*/  rec_status; int /*<<< orphan*/  fsf_req_id; } ;
struct TYPE_6__ {TYPE_2__ run; } ;
struct zfcp_dbf_rec {TYPE_3__ u; int /*<<< orphan*/  lun; int /*<<< orphan*/  d_id; int /*<<< orphan*/  port_status; int /*<<< orphan*/  tag; int /*<<< orphan*/  id; } ;
struct zfcp_dbf {int /*<<< orphan*/  rec_lock; int /*<<< orphan*/  rec; struct zfcp_dbf_rec rec_buf; } ;
struct TYPE_4__ {struct zfcp_dbf* dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_DBF_INVALID_LUN ; 
 int /*<<< orphan*/  ZFCP_DBF_REC_RUN ; 
 int /*<<< orphan*/  ZFCP_DBF_TAG_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,struct zfcp_dbf_rec*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_dbf_rec*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(char *tag, struct zfcp_fc_wka_port *wka_port,
			  u64 req_id)
{
	struct zfcp_dbf *dbf = wka_port->adapter->dbf;
	struct zfcp_dbf_rec *rec = &dbf->rec_buf;
	static int const level = 1;
	unsigned long flags;

	if (FUNC6(!FUNC1(dbf->rec, level)))
		return;

	FUNC4(&dbf->rec_lock, flags);
	FUNC3(rec, 0, sizeof(*rec));

	rec->id = ZFCP_DBF_REC_RUN;
	FUNC2(rec->tag, tag, ZFCP_DBF_TAG_LEN);
	rec->port_status = wka_port->status;
	rec->d_id = wka_port->d_id;
	rec->lun = ZFCP_DBF_INVALID_LUN;

	rec->u.run.fsf_req_id = req_id;
	rec->u.run.rec_status = ~0;
	rec->u.run.rec_step = ~0;
	rec->u.run.rec_action = ~0;
	rec->u.run.rec_count = ~0;

	FUNC0(dbf->rec, level, rec, sizeof(*rec));
	FUNC5(&dbf->rec_lock, flags);
}