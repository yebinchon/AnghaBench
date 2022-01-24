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
struct cmv_dsc_e1 {scalar_t__ function; scalar_t__ idx; scalar_t__ address; scalar_t__ offset; } ;
struct TYPE_5__ {struct cmv_dsc_e1 e1; } ;
struct uea_softc {int data; TYPE_1__ cmv_dsc; } ;
struct cmv_e1 {scalar_t__ bDirection; scalar_t__ bFunction; void* wPreamble; int /*<<< orphan*/  dwData; void* wOffsetAddress; int /*<<< orphan*/  dwSymbolicAddress; void* wIndex; } ;
struct TYPE_6__ {struct cmv_e1 cmv; } ;
struct TYPE_7__ {TYPE_2__ s2; } ;
struct TYPE_8__ {TYPE_3__ e1; } ;
struct intr_pkt {TYPE_4__ u; } ;

/* Variables and functions */
 scalar_t__ ADI930 ; 
 int E1_ADSLDIRECTIVE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int E1_MODEMREADY ; 
 scalar_t__ E1_MODEMTOHOST ; 
 scalar_t__ E1_PREAMBLE ; 
 int /*<<< orphan*/  FUNC3 (struct uea_softc*) ; 
 scalar_t__ FUNC4 (struct uea_softc*) ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct uea_softc*) ; 

__attribute__((used)) static void FUNC13(struct uea_softc *sc, struct intr_pkt *intr)
{
	struct cmv_dsc_e1 *dsc = &sc->cmv_dsc.e1;
	struct cmv_e1 *cmv = &intr->u.e1.s2.cmv;

	FUNC9(FUNC3(sc));
	if (FUNC7(cmv->wPreamble) != E1_PREAMBLE)
		goto bad1;

	if (cmv->bDirection != E1_MODEMTOHOST)
		goto bad1;

	/* FIXME : ADI930 reply wrong preambule (func = 2, sub = 2) to
	 * the first MEMACCESS cmv. Ignore it...
	 */
	if (cmv->bFunction != dsc->function) {
		if (FUNC4(sc) == ADI930
				&& cmv->bFunction ==  FUNC2(2, 2)) {
			cmv->wIndex = FUNC5(dsc->idx);
			FUNC8(dsc->address,
						&cmv->dwSymbolicAddress);
			cmv->wOffsetAddress = FUNC5(dsc->offset);
		} else
			goto bad2;
	}

	if (cmv->bFunction == FUNC2(E1_ADSLDIRECTIVE,
							E1_MODEMREADY)) {
		FUNC12(sc);
		FUNC11(FUNC3(sc));
		return;
	}

	/* in case of MEMACCESS */
	if (FUNC7(cmv->wIndex) != dsc->idx ||
	    FUNC6(&cmv->dwSymbolicAddress) != dsc->address ||
	    FUNC7(cmv->wOffsetAddress) != dsc->offset)
		goto bad2;

	sc->data = FUNC6(&cmv->dwData);
	sc->data = sc->data << 16 | sc->data >> 16;

	FUNC12(sc);
	FUNC11(FUNC3(sc));
	return;

bad2:
	FUNC10(FUNC3(sc), "unexpected cmv received, "
			"Function : %d, Subfunction : %d\n",
			FUNC1(cmv->bFunction),
			FUNC0(cmv->bFunction));
	FUNC11(FUNC3(sc));
	return;

bad1:
	FUNC10(FUNC3(sc), "invalid cmv received, "
			"wPreamble %d, bDirection %d\n",
			FUNC7(cmv->wPreamble), cmv->bDirection);
	FUNC11(FUNC3(sc));
}