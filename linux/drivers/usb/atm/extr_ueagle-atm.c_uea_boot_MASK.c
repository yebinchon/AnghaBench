#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct uea_softc {int /*<<< orphan*/ * urb_int; int /*<<< orphan*/  kthread; TYPE_6__* usb_dev; int /*<<< orphan*/  sync_q; int /*<<< orphan*/  task; int /*<<< orphan*/  send_cmvs; int /*<<< orphan*/  stat; int /*<<< orphan*/  schedule_load_page; int /*<<< orphan*/  dispatch_cmv; } ;
struct intr_pkt {int dummy; } ;
struct TYPE_13__ {TYPE_5__* actconfig; } ;
struct TYPE_12__ {TYPE_4__** interface; } ;
struct TYPE_11__ {TYPE_3__* altsetting; } ;
struct TYPE_10__ {TYPE_2__* endpoint; } ;
struct TYPE_8__ {int /*<<< orphan*/  bInterval; } ;
struct TYPE_9__ {TYPE_1__ desc; } ;

/* Variables and functions */
 scalar_t__ ADI930 ; 
 int E1_INTR_PKT_SIZE ; 
 int E4_INTR_PKT_SIZE ; 
 scalar_t__ EAGLE_IV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uea_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_INTR_PIPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct intr_pkt*) ; 
 struct intr_pkt* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct uea_softc*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct uea_softc*) ; 
 int /*<<< orphan*/  uea_dispatch_cmv_e1 ; 
 int /*<<< orphan*/  uea_dispatch_cmv_e4 ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  uea_intr ; 
 int /*<<< orphan*/  uea_kthread ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uea_load_page_e1 ; 
 int /*<<< orphan*/  uea_load_page_e4 ; 
 int /*<<< orphan*/  uea_schedule_load_page_e1 ; 
 int /*<<< orphan*/  uea_schedule_load_page_e4 ; 
 int /*<<< orphan*/  uea_send_cmvs_e1 ; 
 int /*<<< orphan*/  uea_send_cmvs_e4 ; 
 int /*<<< orphan*/  uea_stat_e1 ; 
 int /*<<< orphan*/  uea_stat_e4 ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,struct intr_pkt*,int,int /*<<< orphan*/ ,struct uea_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct uea_softc *sc)
{
	int ret, size;
	struct intr_pkt *intr;

	FUNC9(FUNC1(sc));

	if (FUNC3(sc) == EAGLE_IV) {
		size = E4_INTR_PKT_SIZE;
		sc->dispatch_cmv = uea_dispatch_cmv_e4;
		sc->schedule_load_page = uea_schedule_load_page_e4;
		sc->stat = uea_stat_e4;
		sc->send_cmvs = uea_send_cmvs_e4;
		FUNC0(&sc->task, uea_load_page_e4);
	} else {
		size = E1_INTR_PKT_SIZE;
		sc->dispatch_cmv = uea_dispatch_cmv_e1;
		sc->schedule_load_page = uea_schedule_load_page_e1;
		sc->stat = uea_stat_e1;
		sc->send_cmvs = uea_send_cmvs_e1;
		FUNC0(&sc->task, uea_load_page_e1);
	}

	FUNC4(&sc->sync_q);

	if (FUNC3(sc) == ADI930)
		FUNC8(sc);

	intr = FUNC6(size, GFP_KERNEL);
	if (!intr)
		goto err0;

	sc->urb_int = FUNC12(0, GFP_KERNEL);
	if (!sc->urb_int)
		goto err1;

	FUNC13(sc->urb_int, sc->usb_dev,
			 FUNC16(sc->usb_dev, UEA_INTR_PIPE),
			 intr, size, uea_intr, sc,
			 sc->usb_dev->actconfig->interface[0]->altsetting[0].
			 endpoint[0].desc.bInterval);

	ret = FUNC17(sc->urb_int, GFP_KERNEL);
	if (ret < 0) {
		FUNC10(FUNC1(sc),
		       "urb submission failed with error %d\n", ret);
		goto err1;
	}

	/* Create worker thread, but don't start it here.  Start it after
	 * all usbatm generic initialization is done.
	 */
	sc->kthread = FUNC7(uea_kthread, sc, "ueagle-atm");
	if (FUNC2(sc->kthread)) {
		FUNC10(FUNC1(sc), "failed to create thread\n");
		goto err2;
	}

	FUNC11(FUNC1(sc));
	return 0;

err2:
	FUNC15(sc->urb_int);
err1:
	FUNC14(sc->urb_int);
	sc->urb_int = NULL;
	FUNC5(intr);
err0:
	FUNC11(FUNC1(sc));
	return -ENOMEM;
}