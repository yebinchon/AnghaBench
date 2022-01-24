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
typedef  scalar_t__ u16 ;
struct viosrp_crq {int /*<<< orphan*/  IU_data_ptr; int /*<<< orphan*/  IU_length; } ;
struct TYPE_5__ {TYPE_1__* window; } ;
struct scsi_info {int /*<<< orphan*/  dev; TYPE_2__ dds; } ;
struct iu_entry {scalar_t__ iu_len; int /*<<< orphan*/  remote_token; TYPE_3__* sbuf; } ;
struct ibmvscsis_cmd {int /*<<< orphan*/  init_time; struct iu_entry* iue; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma; } ;
struct TYPE_4__ {int /*<<< orphan*/  liobn; } ;

/* Variables and functions */
 int CLIENT_FAILED ; 
 int /*<<< orphan*/  ERR_DISCONNECT_RECONNECT ; 
#define  H_DEST_PARM 131 
#define  H_PERMISSION 130 
#define  H_SOURCE_PARM 129 
#define  H_SUCCESS 128 
 size_t LOCAL ; 
 size_t REMOTE ; 
 int RESPONSE_Q_DOWN ; 
 scalar_t__ SRP_MAX_IU_LEN ; 
 long SRP_VIOLATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,long) ; 
 long FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static long FUNC8(struct scsi_info *vscsi,
				      struct ibmvscsis_cmd *cmd,
				      struct viosrp_crq *crq)
{
	struct iu_entry *iue = cmd->iue;
	long rc = 0;
	u16 len;

	len = FUNC0(crq->IU_length);
	if ((len > SRP_MAX_IU_LEN) || (len == 0)) {
		FUNC4(&vscsi->dev, "copy_crq: Invalid len %d passed", len);
		FUNC6(vscsi, ERR_DISCONNECT_RECONNECT, 0);
		return SRP_VIOLATION;
	}

	rc = FUNC5(len, vscsi->dds.window[REMOTE].liobn,
			 FUNC1(crq->IU_data_ptr),
			 vscsi->dds.window[LOCAL].liobn, iue->sbuf->dma);

	switch (rc) {
	case H_SUCCESS:
		cmd->init_time = FUNC7();
		iue->remote_token = crq->IU_data_ptr;
		iue->iu_len = len;
		FUNC3(&vscsi->dev, "copy_crq: ioba 0x%llx, init_time 0x%llx\n",
			FUNC1(crq->IU_data_ptr), cmd->init_time);
		break;
	case H_PERMISSION:
		if (FUNC2(vscsi))
			FUNC6(vscsi,
						  ERR_DISCONNECT_RECONNECT,
						  (RESPONSE_Q_DOWN |
						   CLIENT_FAILED));
		else
			FUNC6(vscsi,
						  ERR_DISCONNECT_RECONNECT, 0);

		FUNC4(&vscsi->dev, "copy_crq: h_copy_rdma failed, rc %ld\n",
			rc);
		break;
	case H_DEST_PARM:
	case H_SOURCE_PARM:
	default:
		FUNC4(&vscsi->dev, "copy_crq: h_copy_rdma failed, rc %ld\n",
			rc);
		FUNC6(vscsi, ERR_DISCONNECT_RECONNECT, 0);
		break;
	}

	return rc;
}