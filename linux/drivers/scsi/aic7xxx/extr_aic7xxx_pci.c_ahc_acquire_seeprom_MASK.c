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
struct seeprom_descriptor {int sd_RDY; int /*<<< orphan*/  sd_MS; } ;
struct ahc_softc {int features; } ;

/* Variables and functions */
 int AHC_SPIOCAP ; 
 int SEEPROM ; 
 int /*<<< orphan*/  FUNC0 (struct seeprom_descriptor*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct seeprom_descriptor*) ; 
 int /*<<< orphan*/  SPIOCAP ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ) ; 

int
FUNC4(struct ahc_softc *ahc, struct seeprom_descriptor *sd)
{
	int wait;

	if ((ahc->features & AHC_SPIOCAP) != 0
	 && (FUNC3(ahc, SPIOCAP) & SEEPROM) == 0)
		return (0);

	/*
	 * Request access of the memory port.  When access is
	 * granted, SEERDY will go high.  We use a 1 second
	 * timeout which should be near 1 second more than
	 * is needed.  Reason: after the chip reset, there
	 * should be no contention.
	 */
	FUNC0(sd, sd->sd_MS);
	wait = 1000;  /* 1 second timeout in msec */
	while (--wait && ((FUNC1(sd) & sd->sd_RDY) == 0)) {
		FUNC2(1000);  /* delay 1 msec */
	}
	if ((FUNC1(sd) & sd->sd_RDY) == 0) {
		FUNC0(sd, 0); 
		return (0);
	}
	return(1);
}