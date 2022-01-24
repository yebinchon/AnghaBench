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
typedef  int /*<<< orphan*/  u32 ;
struct ipr_ioa_cfg {TYPE_7__* pdev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_9__ {TYPE_1__ cmd_pkt; } ;
struct TYPE_11__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_12__ {TYPE_4__ hdr; } ;
struct TYPE_13__ {TYPE_5__ ioasa; } ;
struct ipr_cmnd {TYPE_3__* hrrq; int /*<<< orphan*/  queue; TYPE_2__ ioarcb; TYPE_6__ s; struct ipr_ioa_cfg* ioa_cfg; } ;
struct TYPE_14__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  hrrq_free_q; } ;

/* Variables and functions */
 int IPR_RC_JOB_RETURN ; 
 int /*<<< orphan*/  IPR_SHUTDOWN_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipr_ioa_cfg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ipr_cmnd *ipr_cmd)
{
	struct ipr_ioa_cfg *ioa_cfg = ipr_cmd->ioa_cfg;
	u32 ioasc = FUNC0(ipr_cmd->s.ioasa.hdr.ioasc);

	FUNC1(&ioa_cfg->pdev->dev,
		"0x%02X failed with IOASC: 0x%08X\n",
		ipr_cmd->ioarcb.cmd_pkt.cdb[0], ioasc);

	FUNC2(ioa_cfg, IPR_SHUTDOWN_NONE);
	FUNC3(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
	return IPR_RC_JOB_RETURN;
}