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
struct ahc_softc {int chip; int unpause; int pause; int /*<<< orphan*/ * scb_data; } ;

/* Variables and functions */
 int AHC_PCI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCNTRL ; 
 int IRQMS ; 
 int PAUSE ; 
 int FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 

int
FUNC2(struct ahc_softc *ahc)
{

	/* The IRQMS bit is only valid on VL and EISA chips */
	if ((ahc->chip & AHC_PCI) == 0)
		ahc->unpause = FUNC0(ahc, HCNTRL) & IRQMS;
	else
		ahc->unpause = 0;
	ahc->pause = ahc->unpause | PAUSE; 
	/* XXX The shared scb data stuff should be deprecated */
	if (ahc->scb_data == NULL) {
		ahc->scb_data = FUNC1(sizeof(*ahc->scb_data), GFP_ATOMIC);
		if (ahc->scb_data == NULL)
			return (ENOMEM);
	}

	return (0);
}