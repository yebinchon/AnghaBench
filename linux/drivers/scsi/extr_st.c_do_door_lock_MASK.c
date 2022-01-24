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
struct scsi_tape {int /*<<< orphan*/  door_locked; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_tape*,char*,char*) ; 
 int /*<<< orphan*/  SCSI_REMOVAL_ALLOW ; 
 int /*<<< orphan*/  SCSI_REMOVAL_PREVENT ; 
 int /*<<< orphan*/  ST_LOCKED_EXPLICIT ; 
 int /*<<< orphan*/  ST_LOCK_FAILS ; 
 int /*<<< orphan*/  ST_UNLOCKED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct scsi_tape * STp, int do_lock)
{
	int retval;

	FUNC0(STp, "%socking drive door.\n", do_lock ? "L" : "Unl");

	retval = FUNC1(STp->device,
			do_lock ? SCSI_REMOVAL_PREVENT : SCSI_REMOVAL_ALLOW);
	if (!retval)
		STp->door_locked = do_lock ? ST_LOCKED_EXPLICIT : ST_UNLOCKED;
	else
		STp->door_locked = ST_LOCK_FAILS;
	return retval;
}