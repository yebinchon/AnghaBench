#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int u_int ;
struct ahd_softc {int /*<<< orphan*/  dev_softc; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_CFG ; 
 int CLRINT ; 
 int CLRPCIINT ; 
 int DF0PCISTAT ; 
 int INTSTAT ; 
 int PCIINT ; 
 scalar_t__ PCIR_STATUS ; 
 int SPLTINT ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int FUNC1 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ahd_softc*) ; 
 int /*<<< orphan*/ * pci_status_source ; 
 char** pci_status_strings ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC12(struct ahd_softc *ahd)
{
	uint8_t		pci_status[8];
	ahd_mode_state	saved_modes;
	u_int		pci_status1;
	u_int		intstat;
	u_int		i;
	u_int		reg;
	
	intstat = FUNC1(ahd, INTSTAT);

	if ((intstat & SPLTINT) != 0)
		FUNC5(ahd, intstat);

	if ((intstat & PCIINT) == 0)
		return;

	FUNC11("%s: PCI error Interrupt\n", FUNC2(ahd));
	saved_modes = FUNC8(ahd);
	FUNC0(ahd);
	FUNC9(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
	for (i = 0, reg = DF0PCISTAT; i < 8; i++, reg++) {

		if (i == 5)
			continue;
		pci_status[i] = FUNC1(ahd, reg);
		/* Clear latched errors.  So our interrupt deasserts. */
		FUNC3(ahd, reg, pci_status[i]);
	}

	for (i = 0; i < 8; i++) {
		u_int bit;
	
		if (i == 5)
			continue;

		for (bit = 0; bit < 8; bit++) {

			if ((pci_status[i] & (0x1 << bit)) != 0) {
				const char *s;

				s = pci_status_strings[bit];
				if (i == 7/*TARG*/ && bit == 3)
					s = "%s: Signaled Target Abort\n";
				FUNC11(s, FUNC2(ahd), pci_status_source[i]);
			}
		}	
	}
	pci_status1 = FUNC4(ahd->dev_softc,
					  PCIR_STATUS + 1, /*bytes*/1);
	FUNC6(ahd->dev_softc, PCIR_STATUS + 1,
			     pci_status1, /*bytes*/1);
	FUNC7(ahd, saved_modes);
	FUNC3(ahd, CLRINT, CLRPCIINT);
	FUNC10(ahd);
}