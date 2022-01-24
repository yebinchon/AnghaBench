#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ct_sns_pkt {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ct_sns; int /*<<< orphan*/  ct_sns_dma; } ;
struct TYPE_13__ {int /*<<< orphan*/  list; TYPE_4__ ct_desc; TYPE_3__* vha; } ;
typedef  TYPE_5__ fc_port_t ;
struct TYPE_11__ {TYPE_2__* hw; } ;
struct TYPE_10__ {TYPE_1__* pdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 

void
FUNC4(fc_port_t *fcport)
{
	if (fcport->ct_desc.ct_sns) {
		FUNC0(&fcport->vha->hw->pdev->dev,
			sizeof(struct ct_sns_pkt), fcport->ct_desc.ct_sns,
			fcport->ct_desc.ct_sns_dma);

		fcport->ct_desc.ct_sns = NULL;
	}
	FUNC2(&fcport->list);
	FUNC3(fcport);
	FUNC1(fcport);
}