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
struct TYPE_5__ {int /*<<< orphan*/  smp_resp; int /*<<< orphan*/  smp_req; } ;
struct sas_task {TYPE_2__ smp_task; } ;
struct asd_ascb {TYPE_1__* ha; struct sas_task* uldd_task; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_3__* pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct asd_ascb *a)
{
	struct sas_task *task = a->uldd_task;

	FUNC0(!task);
	FUNC1(&a->ha->pcidev->dev, &task->smp_task.smp_req, 1,
		     DMA_TO_DEVICE);
	FUNC1(&a->ha->pcidev->dev, &task->smp_task.smp_resp, 1,
		     DMA_FROM_DEVICE);
}