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
struct ahc_softc {int dummy; } ;

/* Variables and functions */
 int DSPCISTATUS ; 
 int /*<<< orphan*/  FALSE ; 
 int SCSICONF ; 
 int SCSISEQ ; 
 int SXFRCTL0 ; 
 int TARG_SCSIRATE ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct	ahc_softc *ahc;
	int	i;

	ahc = (struct ahc_softc *)arg;

	/* This will reset most registers to 0, but not all */
	FUNC1(ahc, /*reinit*/FALSE);
	FUNC0(ahc, SCSISEQ, 0);
	FUNC0(ahc, SXFRCTL0, 0);
	FUNC0(ahc, DSPCISTATUS, 0);

	for (i = TARG_SCSIRATE; i < SCSICONF; i++)
		FUNC0(ahc, i, 0);
}