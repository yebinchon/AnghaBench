#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ahc_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  errmesg; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CHANNELS ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_NO_HBA ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ROLE_UNKNOWN ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  SEQADDR0 ; 
 int /*<<< orphan*/  SEQADDR1 ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 TYPE_1__* ahc_hard_errors ; 
 int FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*) ; 
 int num_errors ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct ahc_softc *ahc)
{
	/*
	 * We upset the sequencer :-(
	 * Lookup the error message
	 */
	int i;
	int error;

	error = FUNC2(ahc, ERROR);
	for (i = 0; error != 1 && i < num_errors; i++)
		error >>= 1;
	FUNC5("%s: brkadrint, %s at seqaddr = 0x%x\n",
	       FUNC3(ahc), ahc_hard_errors[i].errmesg,
	       FUNC2(ahc, SEQADDR0) |
	       (FUNC2(ahc, SEQADDR1) << 8));

	FUNC1(ahc);

	/* Tell everyone that this HBA is no longer available */
	FUNC0(ahc, CAM_TARGET_WILDCARD, ALL_CHANNELS,
		       CAM_LUN_WILDCARD, SCB_LIST_NULL, ROLE_UNKNOWN,
		       CAM_NO_HBA);

	/* Disable all interrupt sources by resetting the controller */
	FUNC4(ahc);
}