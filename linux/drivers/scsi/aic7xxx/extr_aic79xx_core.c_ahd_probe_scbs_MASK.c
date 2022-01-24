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
struct ahd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int,int) ; 
 int AHD_MODE_CFG_MSK ; 
 int AHD_MODE_UNKNOWN_MSK ; 
 int AHD_SCB_MAX ; 
 int /*<<< orphan*/  MK_MESSAGE ; 
 scalar_t__ SCB_BASE ; 
 scalar_t__ SCB_CONTROL ; 
 int FUNC1 (struct ahd_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int) ; 

__attribute__((used)) static int
FUNC5(struct ahd_softc *ahd) {
	int i;

	FUNC0(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
			 ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
	for (i = 0; i < AHD_SCB_MAX; i++) {
		int j;

		FUNC4(ahd, i);
		FUNC3(ahd, SCB_BASE, i);
		for (j = 2; j < 64; j++)
			FUNC2(ahd, SCB_BASE+j, 0);
		/* Start out life as unallocated (needing an abort) */
		FUNC2(ahd, SCB_CONTROL, MK_MESSAGE);
		if (FUNC1(ahd, SCB_BASE) != i)
			break;
		FUNC4(ahd, 0);
		if (FUNC1(ahd, SCB_BASE) != 0)
			break;
	}
	return (i);
}