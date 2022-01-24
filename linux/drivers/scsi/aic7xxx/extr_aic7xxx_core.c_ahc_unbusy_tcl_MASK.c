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
typedef  scalar_t__ u_int ;
struct ahc_softc {int flags; } ;

/* Variables and functions */
 int AHC_SCB_BTT ; 
 scalar_t__ BUSY_TARGETS ; 
 scalar_t__ SCBPTR ; 
 scalar_t__ SCB_64_BTT ; 
 scalar_t__ SCB_LIST_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct ahc_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct ahc_softc *ahc, u_int tcl)
{
	u_int target_offset;

	if ((ahc->flags & AHC_SCB_BTT) != 0) {
		u_int saved_scbptr;
		
		saved_scbptr = FUNC2(ahc, SCBPTR);
		FUNC3(ahc, SCBPTR, FUNC0(tcl));
		FUNC3(ahc, SCB_64_BTT+FUNC1(tcl), SCB_LIST_NULL);
		FUNC3(ahc, SCBPTR, saved_scbptr);
	} else {
		target_offset = FUNC1(tcl);
		FUNC3(ahc, BUSY_TARGETS + target_offset, SCB_LIST_NULL);
	}
}