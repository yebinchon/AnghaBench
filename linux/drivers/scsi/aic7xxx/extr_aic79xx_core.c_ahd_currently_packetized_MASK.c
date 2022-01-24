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
struct ahd_softc {int bugs; } ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_CFG ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int AHD_PKTIZED_STATUS_BUG ; 
 int /*<<< orphan*/  LQISTAT2 ; 
 int /*<<< orphan*/  LQISTATE ; 
 int PACKETIZED ; 
 int FUNC0 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ahd_softc *ahd)
{
	ahd_mode_state	 saved_modes;
	int		 packetized;

	saved_modes = FUNC2(ahd);
	if ((ahd->bugs & AHD_PKTIZED_STATUS_BUG) != 0) {
		/*
		 * The packetized bit refers to the last
		 * connection, not the current one.  Check
		 * for non-zero LQISTATE instead.
		 */
		FUNC3(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
		packetized = FUNC0(ahd, LQISTATE) != 0;
	} else {
		FUNC3(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
		packetized = FUNC0(ahd, LQISTAT2) & PACKETIZED;
	}
	FUNC1(ahd, saved_modes);
	return (packetized);
}