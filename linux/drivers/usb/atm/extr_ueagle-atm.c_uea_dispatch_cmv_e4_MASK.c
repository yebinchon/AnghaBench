#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cmv_dsc_e4 {scalar_t__ function; scalar_t__ offset; scalar_t__ group; scalar_t__ address; } ;
struct TYPE_5__ {struct cmv_dsc_e4 e4; } ;
struct uea_softc {void* data1; void* data; TYPE_1__ cmv_dsc; } ;
struct cmv_e4 {int /*<<< orphan*/  wFunction; int /*<<< orphan*/ * dwData; int /*<<< orphan*/  wAddress; int /*<<< orphan*/  wGroup; int /*<<< orphan*/  wOffset; } ;
struct TYPE_6__ {struct cmv_e4 cmv; } ;
struct TYPE_7__ {TYPE_2__ s2; } ;
struct TYPE_8__ {TYPE_3__ e4; } ;
struct intr_pkt {TYPE_4__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  E4_ADSLDIRECTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  E4_MODEMREADY ; 
 int /*<<< orphan*/  FUNC3 (struct uea_softc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct uea_softc*) ; 

__attribute__((used)) static void FUNC11(struct uea_softc *sc, struct intr_pkt *intr)
{
	struct cmv_dsc_e4 *dsc = &sc->cmv_dsc.e4;
	struct cmv_e4 *cmv = &intr->u.e4.s2.cmv;

	FUNC7(FUNC3(sc));
	FUNC6(FUNC3(sc), "cmv %x %x %x %x %x %x\n",
		FUNC4(cmv->wGroup), FUNC4(cmv->wFunction),
		FUNC4(cmv->wOffset), FUNC4(cmv->wAddress),
		FUNC5(cmv->dwData[0]), FUNC5(cmv->dwData[1]));

	if (FUNC4(cmv->wFunction) != dsc->function)
		goto bad2;

	if (FUNC4(cmv->wFunction) == FUNC2(E4_ADSLDIRECTIVE,
						E4_MODEMREADY, 1)) {
		FUNC10(sc);
		FUNC9(FUNC3(sc));
		return;
	}

	/* in case of MEMACCESS */
	if (FUNC4(cmv->wOffset) != dsc->offset ||
	    FUNC4(cmv->wGroup) != dsc->group ||
	    FUNC4(cmv->wAddress) != dsc->address)
		goto bad2;

	sc->data = FUNC5(cmv->dwData[0]);
	sc->data1 = FUNC5(cmv->dwData[1]);
	FUNC10(sc);
	FUNC9(FUNC3(sc));
	return;

bad2:
	FUNC8(FUNC3(sc), "unexpected cmv received, "
			"Function : %d, Subfunction : %d\n",
			FUNC1(cmv->wFunction),
			FUNC0(cmv->wFunction));
	FUNC9(FUNC3(sc));
	return;
}