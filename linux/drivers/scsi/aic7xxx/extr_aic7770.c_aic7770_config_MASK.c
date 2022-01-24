#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct aic7770_identity {int (* setup ) (struct ahc_softc*) ;int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int busspd; int bustime; } ;
struct TYPE_4__ {TYPE_1__ aic7770_softc; } ;
struct ahc_softc {int flags; int chip; int features; int our_id; int our_id_b; int /*<<< orphan*/  init_level; TYPE_2__ bus_softc; int /*<<< orphan*/ * seep_config; int /*<<< orphan*/  bus_chip_init; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int AHC_EDGE_INTERRUPT ; 
#define  AHC_EISA 129 
 int AHC_EXTENDED_TRANS_A ; 
 int AHC_EXTENDED_TRANS_B ; 
 int AHC_TERM_ENB_A ; 
 int AHC_TERM_ENB_B ; 
 int AHC_USEDEFAULTS ; 
#define  AHC_VL 128 
 int AHC_WIDE ; 
 int AUTOFLUSHDIS ; 
 int /*<<< orphan*/  BCTL ; 
 int BIOSDISABLED ; 
 int BIOSMODE ; 
 int BOFF ; 
 int /*<<< orphan*/  BUSSPD ; 
 int /*<<< orphan*/  BUSTIME ; 
 int CHANNEL_B_PRIMARY ; 
 int DFTHRSH ; 
 int EDGE_TRIG ; 
 int ENABLE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  HA_274_BIOSCTRL ; 
 int /*<<< orphan*/  HA_274_BIOSGLOBAL ; 
 int HA_274_EXTENDED_TRANS ; 
 int /*<<< orphan*/  HOSTCONF ; 
 int HSCSIID ; 
 int HWSCSIID ; 
 int /*<<< orphan*/  INTDEF ; 
 int /*<<< orphan*/  SBLKCTL ; 
 int /*<<< orphan*/  SCSICONF ; 
 int TERM_ENB ; 
 int VECTOR ; 
 int FUNC0 (struct ahc_softc*) ; 
 int FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ahc_softc*) ; 
 int /*<<< orphan*/  aic7770_chip_init ; 
 int FUNC7 (struct ahc_softc*,int) ; 
 int FUNC8 (struct ahc_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int FUNC11 (struct ahc_softc*) ; 

int
FUNC12(struct ahc_softc *ahc, struct aic7770_identity *entry, u_int io)
{
	int	error;
	int	have_seeprom;
	u_int	hostconf;
	u_int   irq;
	u_int	intdef;

	error = entry->setup(ahc);
	have_seeprom = 0;
	if (error != 0)
		return (error);

	error = FUNC8(ahc, io);
	if (error != 0)
		return (error);

	/*
	 * Before we continue probing the card, ensure that
	 * its interrupts are *disabled*.  We don't want
	 * a misstep to hang the machine in an interrupt
	 * storm.
	 */
	FUNC3(ahc, FALSE);

	ahc->description = entry->name;
	error = FUNC6(ahc);
	if (error != 0)
		return (error);

	ahc->bus_chip_init = aic7770_chip_init;

	error = FUNC5(ahc, /*reinit*/FALSE);
	if (error != 0)
		return (error);

	/* Make sure we have a valid interrupt vector */
	intdef = FUNC1(ahc, INTDEF);
	irq = intdef & VECTOR;
	switch (irq) {
	case 9:
	case 10:
	case 11:
	case 12:
	case 14:
	case 15:
		break;
	default:
		FUNC10("aic7770_config: invalid irq setting %d\n", intdef);
		return (ENXIO);
	}

	if ((intdef & EDGE_TRIG) != 0)
		ahc->flags |= AHC_EDGE_INTERRUPT;

	switch (ahc->chip & (AHC_EISA|AHC_VL)) {
	case AHC_EISA:
	{
		u_int biosctrl;
		u_int scsiconf;
		u_int scsiconf1;

		biosctrl = FUNC1(ahc, HA_274_BIOSCTRL);
		scsiconf = FUNC1(ahc, SCSICONF);
		scsiconf1 = FUNC1(ahc, SCSICONF + 1);

		/* Get the primary channel information */
		if ((biosctrl & CHANNEL_B_PRIMARY) != 0)
			ahc->flags |= 1;

		if ((biosctrl & BIOSMODE) == BIOSDISABLED) {
			ahc->flags |= AHC_USEDEFAULTS;
		} else {
			if ((ahc->features & AHC_WIDE) != 0) {
				ahc->our_id = scsiconf1 & HWSCSIID;
				if (scsiconf & TERM_ENB)
					ahc->flags |= AHC_TERM_ENB_A;
			} else {
				ahc->our_id = scsiconf & HSCSIID;
				ahc->our_id_b = scsiconf1 & HSCSIID;
				if (scsiconf & TERM_ENB)
					ahc->flags |= AHC_TERM_ENB_A;
				if (scsiconf1 & TERM_ENB)
					ahc->flags |= AHC_TERM_ENB_B;
			}
		}
		if ((FUNC1(ahc, HA_274_BIOSGLOBAL) & HA_274_EXTENDED_TRANS))
			ahc->flags |= AHC_EXTENDED_TRANS_A|AHC_EXTENDED_TRANS_B;
		break;
	}
	case AHC_VL:
	{
		have_seeprom = FUNC0(ahc);
		break;
	}
	default:
		break;
	}
	if (have_seeprom == 0) {
		FUNC9(ahc->seep_config);
		ahc->seep_config = NULL;
	}

	/*
	 * Ensure autoflush is enabled
	 */
	FUNC4(ahc, SBLKCTL, FUNC1(ahc, SBLKCTL) & ~AUTOFLUSHDIS);

	/* Setup the FIFO threshold and the bus off time */
	hostconf = FUNC1(ahc, HOSTCONF);
	FUNC4(ahc, BUSSPD, hostconf & DFTHRSH);
	FUNC4(ahc, BUSTIME, (hostconf << 2) & BOFF);

	ahc->bus_softc.aic7770_softc.busspd = hostconf & DFTHRSH;
	ahc->bus_softc.aic7770_softc.bustime = (hostconf << 2) & BOFF;

	/*
	 * Generic aic7xxx initialization.
	 */
	error = FUNC2(ahc);
	if (error != 0)
		return (error);

	error = FUNC7(ahc, irq);
	if (error != 0)
		return (error);

	ahc->init_level++;

	/*
	 * Enable the board's BUS drivers
	 */
	FUNC4(ahc, BCTL, ENABLE);
	return (0);
}