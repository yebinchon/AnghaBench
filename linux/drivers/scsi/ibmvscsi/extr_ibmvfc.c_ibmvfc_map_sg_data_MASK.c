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
struct srp_direct_buf {scalar_t__ key; int /*<<< orphan*/  len; int /*<<< orphan*/  va; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct ibmvfc_host {scalar_t__ log_level; int /*<<< orphan*/  sg_pool; } ;
struct ibmvfc_event {int /*<<< orphan*/  ext_list_token; struct srp_direct_buf* ext_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  add_cdb_len; } ;
struct ibmvfc_cmd {int /*<<< orphan*/  flags; TYPE_1__ iu; struct srp_direct_buf ioba; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IBMVFC_CLASS_3_ERR ; 
 scalar_t__ IBMVFC_DEFAULT_LOG_LEVEL ; 
 int /*<<< orphan*/  IBMVFC_NO_MEM_DESC ; 
 int /*<<< orphan*/  IBMVFC_RDDATA ; 
 int /*<<< orphan*/  IBMVFC_READ ; 
 int /*<<< orphan*/  IBMVFC_SCATTERLIST ; 
 int /*<<< orphan*/  IBMVFC_WRDATA ; 
 int /*<<< orphan*/  IBMVFC_WRITE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ cls3_error ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ibmvfc_host* FUNC3 (struct device*) ; 
 struct srp_direct_buf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int,struct srp_direct_buf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 int FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *scmd,
			      struct ibmvfc_event *evt,
			      struct ibmvfc_cmd *vfc_cmd, struct device *dev)
{

	int sg_mapped;
	struct srp_direct_buf *data = &vfc_cmd->ioba;
	struct ibmvfc_host *vhost = FUNC3(dev);

	if (cls3_error)
		vfc_cmd->flags |= FUNC0(IBMVFC_CLASS_3_ERR);

	sg_mapped = FUNC7(scmd);
	if (!sg_mapped) {
		vfc_cmd->flags |= FUNC0(IBMVFC_NO_MEM_DESC);
		return 0;
	} else if (FUNC9(sg_mapped < 0)) {
		if (vhost->log_level > IBMVFC_DEFAULT_LOG_LEVEL)
			FUNC6(KERN_ERR, scmd, "Failed to map DMA buffer for command\n");
		return sg_mapped;
	}

	if (scmd->sc_data_direction == DMA_TO_DEVICE) {
		vfc_cmd->flags |= FUNC0(IBMVFC_WRITE);
		vfc_cmd->iu.add_cdb_len |= IBMVFC_WRDATA;
	} else {
		vfc_cmd->flags |= FUNC0(IBMVFC_READ);
		vfc_cmd->iu.add_cdb_len |= IBMVFC_RDDATA;
	}

	if (sg_mapped == 1) {
		FUNC5(scmd, sg_mapped, data);
		return 0;
	}

	vfc_cmd->flags |= FUNC0(IBMVFC_SCATTERLIST);

	if (!evt->ext_list) {
		evt->ext_list = FUNC4(vhost->sg_pool, GFP_ATOMIC,
					       &evt->ext_list_token);

		if (!evt->ext_list) {
			FUNC8(scmd);
			if (vhost->log_level > IBMVFC_DEFAULT_LOG_LEVEL)
				FUNC6(KERN_ERR, scmd, "Can't allocate memory for scatterlist\n");
			return -ENOMEM;
		}
	}

	FUNC5(scmd, sg_mapped, evt->ext_list);

	data->va = FUNC2(evt->ext_list_token);
	data->len = FUNC1(sg_mapped * sizeof(struct srp_direct_buf));
	data->key = 0;
	return 0;
}