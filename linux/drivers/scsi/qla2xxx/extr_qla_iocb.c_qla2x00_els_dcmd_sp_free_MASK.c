#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  els_logo_pyld_dma; scalar_t__ els_logo_pyld; } ;
struct TYPE_14__ {TYPE_4__ els_logo; } ;
struct srb_iocb {int /*<<< orphan*/  timer; TYPE_5__ u; } ;
struct TYPE_12__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_16__ {TYPE_2__* vha; int /*<<< orphan*/  fcport; TYPE_3__ u; } ;
typedef  TYPE_7__ srb_t ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {TYPE_1__* hw; } ;
struct TYPE_10__ {TYPE_6__* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_POOL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 

__attribute__((used)) static void FUNC4(srb_t *sp)
{
	struct srb_iocb *elsio = &sp->u.iocb_cmd;

	FUNC2(sp->fcport);

	if (elsio->u.els_logo.els_logo_pyld)
		FUNC1(&sp->vha->hw->pdev->dev, DMA_POOL_SIZE,
		    elsio->u.els_logo.els_logo_pyld,
		    elsio->u.els_logo.els_logo_pyld_dma);

	FUNC0(&elsio->timer);
	FUNC3(sp);
}