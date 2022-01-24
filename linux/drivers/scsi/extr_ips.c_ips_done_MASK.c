#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct TYPE_20__ {scalar_t__ transfer_length; int cmd_attribute; } ;
struct TYPE_21__ {int breakup; scalar_t__ data_len; int bus; int target_id; TYPE_4__* scsi_cmd; TYPE_1__ dcdb; scalar_t__ sg_break; } ;
typedef  TYPE_2__ ips_scb_t ;
struct TYPE_22__ {int* dcdb_active; int /*<<< orphan*/  num_ioctl; } ;
typedef  TYPE_3__ ips_ha_t ;
struct TYPE_23__ {size_t* cmnd; int result; int /*<<< orphan*/  (* scsi_done ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int DID_ERROR ; 
#define  IPS_FAILURE 129 
 scalar_t__ IPS_MAX_XFER ; 
#define  IPS_SUCCESS_IMM 128 
 int IPS_TRANSFER64K ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int* ips_command_direction ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_4__*) ; 
 struct scatterlist* FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (struct scatterlist*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC14(ips_ha_t * ha, ips_scb_t * scb)
{
	int ret;

	FUNC0("ips_done", 1);

	if (!scb)
		return;

	if ((scb->scsi_cmd) && (FUNC4(scb->scsi_cmd))) {
		FUNC1(ha, scb);
		ha->num_ioctl--;
	} else {
		/*
		 * Check to see if this command had too much
		 * data and had to be broke up.  If so, queue
		 * the rest of the data and continue.
		 */
		if ((scb->breakup) || (scb->sg_break)) {
                        struct scatterlist *sg;
                        int i, sg_dma_index, ips_sg_index = 0;

			/* we had a data breakup */
			scb->data_len = 0;

                        sg = FUNC7(scb->scsi_cmd);

                        /* Spin forward to last dma chunk */
                        sg_dma_index = scb->breakup;
                        for (i = 0; i < scb->breakup; i++)
                                sg = FUNC10(sg);

			/* Take care of possible partial on last chunk */
                        FUNC2(ha,
                                               FUNC8(sg),
                                               scb, ips_sg_index++,
                                               FUNC9(sg));

                        for (; sg_dma_index < FUNC6(scb->scsi_cmd);
                             sg_dma_index++, sg = FUNC10(sg)) {
                                if (FUNC2
                                    (ha,
                                     FUNC8(sg),
                                     scb, ips_sg_index++,
                                     FUNC9(sg)) < 0)
                                        break;
                        }

			scb->dcdb.transfer_length = scb->data_len;
			scb->dcdb.cmd_attribute |=
			    ips_command_direction[scb->scsi_cmd->cmnd[0]];

			if (!(scb->dcdb.cmd_attribute & 0x3))
				scb->dcdb.transfer_length = 0;

			if (scb->data_len >= IPS_MAX_XFER) {
				scb->dcdb.cmd_attribute |= IPS_TRANSFER64K;
				scb->dcdb.transfer_length = 0;
			}

			ret = FUNC5(ha, scb);

			switch (ret) {
			case IPS_FAILURE:
				if (scb->scsi_cmd) {
					scb->scsi_cmd->result = DID_ERROR << 16;
					scb->scsi_cmd->scsi_done(scb->scsi_cmd);
				}

				FUNC3(ha, scb);
				break;
			case IPS_SUCCESS_IMM:
				if (scb->scsi_cmd) {
					scb->scsi_cmd->result = DID_ERROR << 16;
					scb->scsi_cmd->scsi_done(scb->scsi_cmd);
				}

				FUNC3(ha, scb);
				break;
			default:
				break;
			}	/* end case */

			return;
		}
	}			/* end if passthru */

	if (scb->bus) {
		ha->dcdb_active[scb->bus - 1] &= ~(1 << scb->target_id);
	}

	scb->scsi_cmd->scsi_done(scb->scsi_cmd);

	FUNC3(ha, scb);
}