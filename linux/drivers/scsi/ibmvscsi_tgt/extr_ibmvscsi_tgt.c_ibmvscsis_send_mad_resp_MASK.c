#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct viosrp_crq {int /*<<< orphan*/  IU_data_ptr; } ;
struct TYPE_8__ {TYPE_2__* window; } ;
struct scsi_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  waiting_rsp; TYPE_3__ dds; } ;
struct mad_common {int /*<<< orphan*/  tag; } ;
struct iu_entry {TYPE_1__* sbuf; } ;
struct TYPE_9__ {int len; int /*<<< orphan*/  tag; int /*<<< orphan*/  format; } ;
struct ibmvscsis_cmd {int /*<<< orphan*/  list; TYPE_4__ rsp; struct iu_entry* iue; } ;
struct TYPE_10__ {int /*<<< orphan*/  mad; } ;
struct TYPE_7__ {int /*<<< orphan*/  liobn; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int CLIENT_FAILED ; 
 int /*<<< orphan*/  ERR_DISCONNECT_RECONNECT ; 
 long H_PERMISSION ; 
 size_t LOCAL ; 
 size_t REMOTE ; 
 int RESPONSE_Q_DOWN ; 
 int /*<<< orphan*/  VIOSRP_MAD_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 long FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_info*,struct ibmvscsis_cmd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC10 (struct iu_entry*) ; 

__attribute__((used)) static void FUNC11(struct scsi_info *vscsi,
				    struct ibmvscsis_cmd *cmd,
				    struct viosrp_crq *crq)
{
	struct iu_entry *iue = cmd->iue;
	struct mad_common *mad = (struct mad_common *)&FUNC10(iue)->mad;
	uint flag_bits = 0;
	long rc;

	FUNC4();
	rc = FUNC5(sizeof(struct mad_common),
			 vscsi->dds.window[LOCAL].liobn, iue->sbuf->dma,
			 vscsi->dds.window[REMOTE].liobn,
			 FUNC0(crq->IU_data_ptr));
	if (!rc) {
		cmd->rsp.format = VIOSRP_MAD_FORMAT;
		cmd->rsp.len = sizeof(struct mad_common);
		cmd->rsp.tag = mad->tag;
		FUNC9(&cmd->list, &vscsi->waiting_rsp);
		FUNC8(vscsi);
	} else {
		FUNC2(&vscsi->dev, "Error sending mad response, rc %ld\n",
			rc);
		if (rc == H_PERMISSION) {
			if (FUNC1(vscsi))
				flag_bits = (RESPONSE_Q_DOWN | CLIENT_FAILED);
		}
		FUNC3(&vscsi->dev, "mad: failed to copy to client, rc %ld\n",
			rc);

		FUNC6(vscsi, cmd);
		FUNC7(vscsi, ERR_DISCONNECT_RECONNECT,
					  flag_bits);
	}
}