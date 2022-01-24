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
struct ahc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_BUSRESET_DELAY ; 
 int ENSCSIRST ; 
 int SCSIRSTO ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 int FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct ahc_softc *ahc)
{
	uint8_t scsiseq;

	FUNC4(ahc, SIMODE1, FUNC3(ahc, SIMODE1) & ~ENSCSIRST);
	scsiseq = FUNC3(ahc, SCSISEQ);
	FUNC4(ahc, SCSISEQ, scsiseq | SCSIRSTO);
	FUNC2(ahc);
	FUNC1(AHC_BUSRESET_DELAY);
	/* Turn off the bus reset */
	FUNC4(ahc, SCSISEQ, scsiseq & ~SCSIRSTO);

	FUNC0(ahc);

	/* Re-enable reset interrupts */
	FUNC4(ahc, SIMODE1, FUNC3(ahc, SIMODE1) | ENSCSIRST);
}