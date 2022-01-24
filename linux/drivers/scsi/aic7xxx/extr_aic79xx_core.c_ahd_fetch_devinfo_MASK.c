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
typedef  int u_int ;
struct ahd_softc {int dummy; } ;
struct ahd_devinfo {int dummy; } ;
typedef  scalar_t__ role_t ;
typedef  int /*<<< orphan*/  ahd_mode_state ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int CMDPHASE_PENDING ; 
 int /*<<< orphan*/  IOWNID ; 
 int OID ; 
 scalar_t__ ROLE_INITIATOR ; 
 scalar_t__ ROLE_TARGET ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,int) ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int TARGET ; 
 int /*<<< orphan*/  TARGIDIN ; 
 int /*<<< orphan*/  TOWNID ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_devinfo*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct ahd_softc *ahd, struct ahd_devinfo *devinfo)
{
	ahd_mode_state	saved_modes;
	u_int		saved_scsiid;
	role_t		role;
	int		our_id;

	saved_modes = FUNC5(ahd);
	FUNC6(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

	if (FUNC3(ahd, SSTAT0) & TARGET)
		role = ROLE_TARGET;
	else
		role = ROLE_INITIATOR;

	if (role == ROLE_TARGET
	 && (FUNC3(ahd, SEQ_FLAGS) & CMDPHASE_PENDING) != 0) {
		/* We were selected, so pull our id from TARGIDIN */
		our_id = FUNC3(ahd, TARGIDIN) & OID;
	} else if (role == ROLE_TARGET)
		our_id = FUNC3(ahd, TOWNID);
	else
		our_id = FUNC3(ahd, IOWNID);

	saved_scsiid = FUNC3(ahd, SAVED_SCSIID);
	FUNC2(devinfo,
			    our_id,
			    FUNC1(ahd, saved_scsiid),
			    FUNC3(ahd, SAVED_LUN),
			    FUNC0(ahd, saved_scsiid),
			    role);
	FUNC4(ahd, saved_modes);
}