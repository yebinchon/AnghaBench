#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct capi_ctr {scalar_t__ driverdata; } ;
struct TYPE_5__ {TYPE_2__* card; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_6__ {unsigned int port; int /*<<< orphan*/  irq; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct capi_ctr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct capi_ctr *ctrl)
{
	avmctrl_info *cinfo = (avmctrl_info *)(ctrl->driverdata);
	avmcard *card = cinfo->card;
	unsigned int port = card->port;

	FUNC1(port);
	FUNC1(port);

	FUNC2(ctrl);
	FUNC3(card->irq, card);
	FUNC0(card);
}