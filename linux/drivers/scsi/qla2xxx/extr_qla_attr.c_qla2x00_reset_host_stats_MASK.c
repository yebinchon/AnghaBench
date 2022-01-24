#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {int dummy; } ;
struct qla_hw_data {TYPE_4__* pdev; } ;
struct link_statistics {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  jiffies_at_last_reset; } ;
struct TYPE_6__ {TYPE_5__ qla_stats; TYPE_5__ fc_host_stat; struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_0 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 struct link_statistics* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,struct link_statistics*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 struct scsi_qla_host* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,struct link_statistics*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC9(struct Scsi_Host *shost)
{
	scsi_qla_host_t *vha = FUNC8(shost);
	struct qla_hw_data *ha = vha->hw;
	struct scsi_qla_host *base_vha = FUNC5(ha->pdev);
	struct link_statistics *stats;
	dma_addr_t stats_dma;

	FUNC4(&vha->qla_stats, 0, sizeof(vha->qla_stats));
	FUNC4(&vha->fc_host_stat, 0, sizeof(vha->fc_host_stat));

	vha->qla_stats.jiffies_at_last_reset = FUNC3();

	if (FUNC0(ha)) {
		stats = FUNC1(&ha->pdev->dev,
		    sizeof(*stats), &stats_dma, GFP_KERNEL);
		if (!stats) {
			FUNC6(ql_log_warn, vha, 0x70d7,
			    "Failed to allocate memory for stats.\n");
			return;
		}

		/* reset firmware statistics */
		FUNC7(base_vha, stats, stats_dma, BIT_0);

		FUNC2(&ha->pdev->dev, sizeof(*stats),
		    stats, stats_dma);
	}
}