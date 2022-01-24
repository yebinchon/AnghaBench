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
struct usb_interface {int dummy; } ;
struct TYPE_2__ {struct bas_cardstate* bas; } ;
struct cardstate {int /*<<< orphan*/ * dev; scalar_t__ bcs; TYPE_1__ hw; } ;
struct bas_cardstate {int /*<<< orphan*/ * udev; int /*<<< orphan*/ * interface; scalar_t__ rcvbuf_size; int /*<<< orphan*/ * rcvbuf; int /*<<< orphan*/  int_in_wq; int /*<<< orphan*/  timer_int_in; int /*<<< orphan*/  timer_cmd_in; int /*<<< orphan*/  timer_atrdy; int /*<<< orphan*/  timer_ctrl; scalar_t__ basstate; } ;

/* Variables and functions */
 int BAS_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC6 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct cardstate* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *interface)
{
	struct cardstate *cs;
	struct bas_cardstate *ucs;
	int j;

	cs = FUNC8(interface);

	ucs = cs->hw.bas;

	FUNC2(cs->dev, "disconnecting Gigaset base\n");

	/* mark base as not ready, all channels disconnected */
	ucs->basstate = 0;

	/* tell LL all channels are down */
	for (j = 0; j < BAS_CHANNELS; ++j)
		FUNC4(cs->bcs + j);

	/* stop driver (common part) */
	FUNC6(cs);

	/* stop delayed work and URBs, free ressources */
	FUNC1(&ucs->timer_ctrl);
	FUNC1(&ucs->timer_atrdy);
	FUNC1(&ucs->timer_cmd_in);
	FUNC1(&ucs->timer_int_in);
	FUNC0(&ucs->int_in_wq);
	FUNC3(cs);
	FUNC10(interface, NULL);
	FUNC7(ucs->rcvbuf);
	ucs->rcvbuf = NULL;
	ucs->rcvbuf_size = 0;
	FUNC9(ucs->udev);
	ucs->interface = NULL;
	ucs->udev = NULL;
	cs->dev = NULL;
	FUNC5(cs);
}