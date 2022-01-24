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
struct whc {scalar_t__ base; TYPE_1__* umc; int /*<<< orphan*/  pz_list_dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WUSBCMD_PERIODIC_EN ; 
 scalar_t__ WUSBPERIODICLISTBASE ; 
 scalar_t__ WUSBSTS ; 
 int /*<<< orphan*/  WUSBSTS_PERIODIC_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

void FUNC3(struct whc *whc)
{
	FUNC0(whc->pz_list_dma, whc->base + WUSBPERIODICLISTBASE);

	FUNC1(whc, WUSBCMD_PERIODIC_EN, WUSBCMD_PERIODIC_EN);
	FUNC2(&whc->umc->dev, whc->base + WUSBSTS,
		      WUSBSTS_PERIODIC_SCHED, WUSBSTS_PERIODIC_SCHED,
		      1000, "start PZL");
}