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
 int AHC_SCB_MAX ; 
 int /*<<< orphan*/  SCBPTR ; 
 int /*<<< orphan*/  SCB_BASE ; 
 int FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct ahc_softc *ahc) {
	int i;

	for (i = 0; i < AHC_SCB_MAX; i++) {

		FUNC1(ahc, SCBPTR, i);
		FUNC1(ahc, SCB_BASE, i);
		if (FUNC0(ahc, SCB_BASE) != i)
			break;
		FUNC1(ahc, SCBPTR, 0);
		if (FUNC0(ahc, SCB_BASE) != 0)
			break;
	}
	return (i);
}