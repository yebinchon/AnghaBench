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
struct whc {scalar_t__ base; TYPE_1__* umc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WUSBCMD_ASYNC_EN ; 
 scalar_t__ WUSBSTS ; 
 int /*<<< orphan*/  WUSBSTS_ASYNC_SCHED ; 
 int /*<<< orphan*/  FUNC0 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

void FUNC2(struct whc *whc)
{
	FUNC0(whc, WUSBCMD_ASYNC_EN, 0);
	FUNC1(&whc->umc->dev, whc->base + WUSBSTS,
		      WUSBSTS_ASYNC_SCHED, 0,
		      1000, "stop ASL");
}