#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_18__ {int /*<<< orphan*/  status; } ;
struct ipr_sata_port {TYPE_9__ ioasa; struct ipr_resource_entry* res; } ;
struct ipr_resource_entry {int /*<<< orphan*/  target; int /*<<< orphan*/  bus; } ;
struct ipr_ioasa_gata {int dummy; } ;
struct ipr_ioa_cfg {int /*<<< orphan*/  host; scalar_t__ sis64; } ;
struct TYPE_14__ {int /*<<< orphan*/  ioasc_specific; int /*<<< orphan*/  ioasc; } ;
struct TYPE_13__ {int /*<<< orphan*/  gata; } ;
struct TYPE_15__ {TYPE_5__ hdr; TYPE_4__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  gata; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
struct TYPE_16__ {TYPE_6__ ioasa; TYPE_3__ ioasa64; } ;
struct ipr_cmnd {TYPE_8__* hrrq; int /*<<< orphan*/  queue; TYPE_7__ s; struct ipr_ioa_cfg* ioa_cfg; struct ata_queued_cmd* qc; } ;
struct ata_queued_cmd {int /*<<< orphan*/  err_mask; TYPE_1__* ap; } ;
struct TYPE_17__ {int /*<<< orphan*/  _lock; int /*<<< orphan*/  hrrq_free_q; } ;
struct TYPE_10__ {struct ipr_sata_port* private_data; } ;

/* Variables and functions */
 int IPR_ATA_DEVICE_WAS_RESET ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ RECOVERED_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_queued_cmd*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ipr_ioa_cfg*,struct ipr_cmnd*,struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	struct ata_queued_cmd *qc = ipr_cmd->qc;
	struct ipr_sata_port *sata_port = qc->ap->private_data;
	struct ipr_resource_entry *res = sata_port->res;
	u32 ioasc = FUNC4(ipr_cmd->s.ioasa.hdr.ioasc);

	FUNC9(&ipr_cmd->hrrq->_lock);
	if (ipr_cmd->ioa_cfg->sis64)
		FUNC7(&sata_port->ioasa, &ipr_cmd->s.ioasa64.u.gata,
		       sizeof(struct ipr_ioasa_gata));
	else
		FUNC7(&sata_port->ioasa, &ipr_cmd->s.ioasa.u.gata,
		       sizeof(struct ipr_ioasa_gata));
	FUNC5(ioa_cfg, ipr_cmd, res);

	if (FUNC4(ipr_cmd->s.ioasa.hdr.ioasc_specific) & IPR_ATA_DEVICE_WAS_RESET)
		FUNC8(ioa_cfg->host, res->bus, res->target);

	if (FUNC0(ioasc) > RECOVERED_ERROR)
		qc->err_mask |= FUNC1(sata_port->ioasa.status);
	else
		qc->err_mask |= FUNC2(sata_port->ioasa.status);
	FUNC6(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
	FUNC10(&ipr_cmd->hrrq->_lock);
	FUNC3(qc);
}