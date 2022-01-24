#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct TYPE_9__ {int /*<<< orphan*/  length; void* status; } ;
struct viosrp_adapter_info {int /*<<< orphan*/  buffer; TYPE_2__ common; } ;
struct TYPE_12__ {TYPE_4__* window; int /*<<< orphan*/  partition_num; int /*<<< orphan*/  partition_name; } ;
struct TYPE_10__ {void* os_type; void* mad_version; int /*<<< orphan*/  partition_name; int /*<<< orphan*/  srp_version; void* partition_number; } ;
struct scsi_info {int /*<<< orphan*/  dev; TYPE_6__* dma_dev; TYPE_5__ dds; TYPE_3__ client_data; int /*<<< orphan*/  flags; } ;
struct mad_adapter_info_data {void** port_max_txu; void* os_type; void* mad_version; void* partition_number; int /*<<< orphan*/  partition_name; int /*<<< orphan*/  srp_version; } ;
struct iu_entry {long target; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {struct viosrp_adapter_info adapter_info; } ;
struct TYPE_14__ {TYPE_1__ mad; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  liobn; } ;

/* Variables and functions */
 int CLIENT_FAILED ; 
 int /*<<< orphan*/  ERR_DISCONNECT_RECONNECT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  H_DEST_PARM 131 
#define  H_PERMISSION 130 
#define  H_SOURCE_PARM 129 
#define  H_SUCCESS 128 
 int /*<<< orphan*/  LINUX ; 
 size_t LOCAL ; 
 int /*<<< orphan*/  MAD_VERSION_1 ; 
 int /*<<< orphan*/  MAX_TXU ; 
 size_t REMOTE ; 
 int RESPONSE_Q_DOWN ; 
 int /*<<< orphan*/  SRP_VERSION ; 
 int /*<<< orphan*/  VIOSRP_MAD_FAILED ; 
 int /*<<< orphan*/  VIOSRP_MAD_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct scsi_info*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,long,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,long) ; 
 struct mad_adapter_info_data* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,struct mad_adapter_info_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 long FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC16 (struct iu_entry*) ; 

__attribute__((used)) static long FUNC17(struct scsi_info *vscsi,
				   struct iu_entry *iue)
{
	struct viosrp_adapter_info *mad = &FUNC16(iue)->mad.adapter_info;
	struct mad_adapter_info_data *info;
	uint flag_bits = 0;
	dma_addr_t token;
	long rc;

	mad->common.status = FUNC4(VIOSRP_MAD_SUCCESS);

	if (FUNC0(mad->common.length) > sizeof(*info)) {
		mad->common.status = FUNC4(VIOSRP_MAD_FAILED);
		return 0;
	}

	info = FUNC9(&vscsi->dma_dev->dev, sizeof(*info), &token,
				  GFP_ATOMIC);
	if (!info) {
		FUNC7(&vscsi->dev, "bad dma_alloc_coherent %p\n",
			iue->target);
		mad->common.status = FUNC4(VIOSRP_MAD_FAILED);
		return 0;
	}

	/* Get remote info */
	rc = FUNC12(FUNC0(mad->common.length),
			 vscsi->dds.window[REMOTE].liobn,
			 FUNC2(mad->buffer),
			 vscsi->dds.window[LOCAL].liobn, token);

	if (rc != H_SUCCESS) {
		if (rc == H_PERMISSION) {
			if (FUNC3(vscsi))
				flag_bits = (RESPONSE_Q_DOWN | CLIENT_FAILED);
		}
		FUNC8(&vscsi->dev, "adapter_info: h_copy_rdma from client failed, rc %ld\n",
			 rc);
		FUNC6(&vscsi->dev, "adapter_info: ioba 0x%llx, flags 0x%x, flag_bits 0x%x\n",
			FUNC2(mad->buffer), vscsi->flags, flag_bits);
		FUNC13(vscsi, ERR_DISCONNECT_RECONNECT,
					  flag_bits);
		goto free_dma;
	}

	/*
	 * Copy client info, but ignore partition number, which we
	 * already got from phyp - unless we failed to get it from
	 * phyp (e.g. if we're running on a p5 system).
	 */
	if (vscsi->client_data.partition_number == 0)
		vscsi->client_data.partition_number =
			FUNC1(info->partition_number);
	FUNC15(vscsi->client_data.srp_version, info->srp_version,
		sizeof(vscsi->client_data.srp_version));
	FUNC15(vscsi->client_data.partition_name, info->partition_name,
		sizeof(vscsi->client_data.partition_name));
	vscsi->client_data.mad_version = FUNC1(info->mad_version);
	vscsi->client_data.os_type = FUNC1(info->os_type);

	/* Copy our info */
	FUNC15(info->srp_version, SRP_VERSION,
		sizeof(info->srp_version));
	FUNC15(info->partition_name, vscsi->dds.partition_name,
		sizeof(info->partition_name));
	info->partition_number = FUNC5(vscsi->dds.partition_num);
	info->mad_version = FUNC5(MAD_VERSION_1);
	info->os_type = FUNC5(LINUX);
	FUNC14(&info->port_max_txu[0], 0, sizeof(info->port_max_txu));
	info->port_max_txu[0] = FUNC5(MAX_TXU);

	FUNC11();
	rc = FUNC12(sizeof(*info), vscsi->dds.window[LOCAL].liobn,
			 token, vscsi->dds.window[REMOTE].liobn,
			 FUNC2(mad->buffer));
	switch (rc) {
	case H_SUCCESS:
		break;

	case H_SOURCE_PARM:
	case H_DEST_PARM:
	case H_PERMISSION:
		if (FUNC3(vscsi))
			flag_bits = (RESPONSE_Q_DOWN | CLIENT_FAILED);
		/* Fall through */
	default:
		FUNC7(&vscsi->dev, "adapter_info: h_copy_rdma to client failed, rc %ld\n",
			rc);
		FUNC13(vscsi,
					  ERR_DISCONNECT_RECONNECT,
					  flag_bits);
		break;
	}

free_dma:
	FUNC10(&vscsi->dma_dev->dev, sizeof(*info), info, token);
	FUNC6(&vscsi->dev, "Leaving adapter_info, rc %ld\n", rc);

	return rc;
}