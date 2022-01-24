#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uea_softc {int /*<<< orphan*/  dsp_firm; int /*<<< orphan*/  task; TYPE_1__* urb_int; int /*<<< orphan*/  kthread; } ;
struct TYPE_3__ {int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 int /*<<< orphan*/  UEA_LOOPBACK_ON ; 
 int /*<<< orphan*/  UEA_SET_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uea_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC11(struct uea_softc *sc)
{
	int ret;
	FUNC6(FUNC0(sc));
	ret = FUNC3(sc->kthread);
	FUNC5(FUNC0(sc), "kthread finish with status %d\n", ret);

	FUNC8(sc, UEA_SET_MODE, UEA_LOOPBACK_ON, 0, NULL);

	FUNC10(sc->urb_int);
	FUNC2(sc->urb_int->transfer_buffer);
	FUNC9(sc->urb_int);

	/* flush the work item, when no one can schedule it */
	FUNC1(&sc->task);

	FUNC4(sc->dsp_firm);
	FUNC7(FUNC0(sc));
}