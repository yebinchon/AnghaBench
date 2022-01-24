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
typedef  int /*<<< orphan*/  u16 ;
struct uea_stats {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  function; } ;
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct TYPE_6__ {TYPE_2__ e1; TYPE_1__ e4; } ;
struct uea_softc {int booting; int (* send_cmvs ) (struct uea_softc*) ;scalar_t__ reset; int /*<<< orphan*/  task; scalar_t__ ovl; scalar_t__ pageno; TYPE_3__ cmv_dsc; int /*<<< orphan*/  stats; scalar_t__ cmv_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_PHY_SIG_LOST ; 
 int /*<<< orphan*/  E1_ADSLDIRECTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E1_MODEMREADY ; 
 int /*<<< orphan*/  E4_ADSLDIRECTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  E4_MODEMREADY ; 
 scalar_t__ EAGLE_IV ; 
 int /*<<< orphan*/  FUNC2 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_BOOT_IDMA ; 
 scalar_t__ FUNC3 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_END_RESET ; 
 int /*<<< orphan*/  UEA_LOOPBACK_ON ; 
 int /*<<< orphan*/  UEA_MPRX_MAILBOX ; 
 int /*<<< orphan*/  UEA_MPTX_MAILBOX ; 
 int /*<<< orphan*/  UEA_SET_2183_DATA ; 
 int /*<<< orphan*/  UEA_SET_MODE ; 
 int /*<<< orphan*/  UEA_START_RESET ; 
 int /*<<< orphan*/  UEA_SWAP_MAILBOX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct uea_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct uea_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int FUNC14 (struct uea_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct uea_softc*) ; 

__attribute__((used)) static int FUNC16(struct uea_softc *sc)
{
	u16 zero = 0;	/* ;-) */
	int ret;

	FUNC9(FUNC2(sc));
	FUNC10(FUNC2(sc), "(re)booting started\n");

	/* mask interrupt */
	sc->booting = 1;
	/* We need to set this here because, a ack timeout could have occurred,
	 * but before we start the reboot, the ack occurs and set this to 1.
	 * So we will failed to wait Ready CMV.
	 */
	sc->cmv_ack = 0;
	FUNC4(ATM_PHY_SIG_LOST);

	/* reset statistics */
	FUNC5(&sc->stats, 0, sizeof(struct uea_stats));

	/* tell the modem that we want to boot in IDMA mode */
	FUNC12(sc, UEA_SET_MODE, UEA_LOOPBACK_ON, 0, NULL);
	FUNC12(sc, UEA_SET_MODE, UEA_BOOT_IDMA, 0, NULL);

	/* enter reset mode */
	FUNC12(sc, UEA_SET_MODE, UEA_START_RESET, 0, NULL);

	/* original driver use 200ms, but windows driver use 100ms */
	ret = FUNC14(sc, 0, FUNC6(100));
	if (ret < 0)
		return ret;

	/* leave reset mode */
	FUNC12(sc, UEA_SET_MODE, UEA_END_RESET, 0, NULL);

	if (FUNC3(sc) != EAGLE_IV) {
		/* clear tx and rx mailboxes */
		FUNC12(sc, UEA_SET_2183_DATA, UEA_MPTX_MAILBOX, 2, &zero);
		FUNC12(sc, UEA_SET_2183_DATA, UEA_MPRX_MAILBOX, 2, &zero);
		FUNC12(sc, UEA_SET_2183_DATA, UEA_SWAP_MAILBOX, 2, &zero);
	}

	ret = FUNC14(sc, 0, FUNC6(1000));
	if (ret < 0)
		return ret;

	if (FUNC3(sc) == EAGLE_IV)
		sc->cmv_dsc.e4.function = FUNC1(E4_ADSLDIRECTIVE,
							E4_MODEMREADY, 1);
	else
		sc->cmv_dsc.e1.function = FUNC0(E1_ADSLDIRECTIVE,
							E1_MODEMREADY);

	/* demask interrupt */
	sc->booting = 0;

	/* start loading DSP */
	sc->pageno = 0;
	sc->ovl = 0;
	FUNC7(&sc->task);

	/* wait for modem ready CMV */
	ret = FUNC15(sc);
	if (ret < 0)
		return ret;

	FUNC13(FUNC2(sc), "Ready CMV received\n");

	ret = sc->send_cmvs(sc);
	if (ret < 0)
		return ret;

	sc->reset = 0;
	FUNC11(FUNC2(sc));
	return ret;
}