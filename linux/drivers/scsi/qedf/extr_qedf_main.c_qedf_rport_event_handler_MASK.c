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
typedef  int /*<<< orphan*/  u32 ;
struct qedf_rport {int /*<<< orphan*/  rport_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  peers; int /*<<< orphan*/  dev_type; struct fc_rport* rport; struct fc_rport_priv* rdata; struct qedf_ctx* qedf; } ;
struct qedf_ctx {int /*<<< orphan*/  num_offloads; int /*<<< orphan*/  hba_lock; int /*<<< orphan*/  dbg_ctx; int /*<<< orphan*/  fcports; } ;
struct TYPE_2__ {int roles; int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int flags; TYPE_1__ ids; int /*<<< orphan*/  kref; int /*<<< orphan*/  spp_type; struct fc_rport* rport; } ;
struct fc_rport_libfc_priv {int dummy; } ;
struct fc_rport {struct fc_rport_libfc_priv* dd_data; int /*<<< orphan*/  port_id; } ;
struct fc_lport {int dummy; } ;
typedef  enum fc_rport_event { ____Placeholder_fc_rport_event } fc_rport_event ;

/* Variables and functions */
 int /*<<< orphan*/  FC_FID_DIR_SERV ; 
 int FC_RPORT_ROLE_FCP_INITIATOR ; 
 int FC_RPORT_ROLE_FCP_TARGET ; 
 int FC_RP_FLAGS_RETRY ; 
 int /*<<< orphan*/  FC_TYPE_FCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QEDF_LOG_DISC ; 
 int /*<<< orphan*/  QEDF_MAX_SESSIONS ; 
 int /*<<< orphan*/  QEDF_RPORT_SESSION_READY ; 
 int /*<<< orphan*/  QEDF_RPORT_TYPE_DISK ; 
 int /*<<< orphan*/  QEDF_RPORT_TYPE_TAPE ; 
 int /*<<< orphan*/  QEDF_RPORT_UPLOADING_CONNECTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
#define  RPORT_EV_FAILED 132 
#define  RPORT_EV_LOGO 131 
#define  RPORT_EV_NONE 130 
#define  RPORT_EV_READY 129 
#define  RPORT_EV_STOP 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct qedf_ctx* FUNC10 (struct fc_lport*) ; 
 int FUNC11 (struct qedf_ctx*,struct qedf_rport*) ; 
 int /*<<< orphan*/  FUNC12 (struct qedf_ctx*,struct qedf_rport*) ; 
 int FUNC13 (struct qedf_ctx*,struct qedf_rport*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(struct fc_lport *lport,
				struct fc_rport_priv *rdata,
				enum fc_rport_event event)
{
	struct qedf_ctx *qedf = FUNC10(lport);
	struct fc_rport *rport = rdata->rport;
	struct fc_rport_libfc_priv *rp;
	struct qedf_rport *fcport;
	u32 port_id;
	int rval;
	unsigned long flags;

	FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC, "event = %d, "
		   "port_id = 0x%x\n", event, rdata->ids.port_id);

	switch (event) {
	case RPORT_EV_READY:
		if (!rport) {
			FUNC2(&(qedf->dbg_ctx), "rport is NULL.\n");
			break;
		}

		rp = rport->dd_data;
		fcport = (struct qedf_rport *)&rp[1];
		fcport->qedf = qedf;

		if (FUNC5(&qedf->num_offloads) >= QEDF_MAX_SESSIONS) {
			FUNC0(&(qedf->dbg_ctx), "Not offloading "
			    "portid=0x%x as max number of offloaded sessions "
			    "reached.\n", rdata->ids.port_id);
			return;
		}

		/*
		 * Don't try to offload the session again. Can happen when we
		 * get an ADISC
		 */
		if (FUNC17(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
			FUNC2(&(qedf->dbg_ctx), "Session already "
				   "offloaded, portid=0x%x.\n",
				   rdata->ids.port_id);
			return;
		}

		if (rport->port_id == FC_FID_DIR_SERV) {
			/*
			 * qedf_rport structure doesn't exist for
			 * directory server.
			 * We should not come here, as lport will
			 * take care of fabric login
			 */
			FUNC2(&(qedf->dbg_ctx), "rport struct does not "
			    "exist for dir server port_id=%x\n",
			    rdata->ids.port_id);
			break;
		}

		if (rdata->spp_type != FC_TYPE_FCP) {
			FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			    "Not offloading since spp type isn't FCP\n");
			break;
		}
		if (!(rdata->ids.roles & FC_RPORT_ROLE_FCP_TARGET)) {
			FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			    "Not FCP target so not offloading\n");
			break;
		}

		/* Initial reference held on entry, so this can't fail */
		FUNC7(&rdata->kref);
		fcport->rdata = rdata;
		fcport->rport = rport;

		rval = FUNC11(qedf, fcport);
		if (rval) {
			FUNC12(qedf, fcport);
			break;
		}

		/* Set device type */
		if (rdata->flags & FC_RP_FLAGS_RETRY &&
		    rdata->ids.roles & FC_RPORT_ROLE_FCP_TARGET &&
		    !(rdata->ids.roles & FC_RPORT_ROLE_FCP_INITIATOR)) {
			fcport->dev_type = QEDF_RPORT_TYPE_TAPE;
			FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			    "portid=%06x is a TAPE device.\n",
			    rdata->ids.port_id);
		} else {
			fcport->dev_type = QEDF_RPORT_TYPE_DISK;
		}

		rval = FUNC13(qedf, fcport);
		if (rval) {
			FUNC12(qedf, fcport);
			break;
		}

		/* Add fcport to list of qedf_ctx list of offloaded ports */
		FUNC15(&qedf->hba_lock, flags);
		FUNC8(&fcport->peers, &qedf->fcports);
		FUNC16(&qedf->hba_lock, flags);

		/*
		 * Set the session ready bit to let everyone know that this
		 * connection is ready for I/O
		 */
		FUNC14(QEDF_RPORT_SESSION_READY, &fcport->flags);
		FUNC4(&qedf->num_offloads);

		break;
	case RPORT_EV_LOGO:
	case RPORT_EV_FAILED:
	case RPORT_EV_STOP:
		port_id = rdata->ids.port_id;
		if (port_id == FC_FID_DIR_SERV)
			break;

		if (!rport) {
			FUNC1(&(qedf->dbg_ctx), QEDF_LOG_DISC,
			    "port_id=%x - rport notcreated Yet!!\n", port_id);
			break;
		}
		rp = rport->dd_data;
		/*
		 * Perform session upload. Note that rdata->peers is already
		 * removed from disc->rports list before we get this event.
		 */
		fcport = (struct qedf_rport *)&rp[1];

		FUNC15(&fcport->rport_lock, flags);
		/* Only free this fcport if it is offloaded already */
		if (FUNC17(QEDF_RPORT_SESSION_READY, &fcport->flags) &&
		    !FUNC17(QEDF_RPORT_UPLOADING_CONNECTION,
		    &fcport->flags)) {
			FUNC14(QEDF_RPORT_UPLOADING_CONNECTION,
				&fcport->flags);
			FUNC16(&fcport->rport_lock, flags);
			FUNC12(qedf, fcport);
			/*
			 * Remove fcport to list of qedf_ctx list of offloaded
			 * ports
			 */
			FUNC15(&qedf->hba_lock, flags);
			FUNC9(&fcport->peers);
			FUNC16(&qedf->hba_lock, flags);

			FUNC6(QEDF_RPORT_UPLOADING_CONNECTION,
			    &fcport->flags);
			FUNC3(&qedf->num_offloads);
		} else {
			FUNC16(&fcport->rport_lock, flags);
		}
		break;

	case RPORT_EV_NONE:
		break;
	}
}