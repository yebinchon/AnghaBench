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
struct fdomain {scalar_t__ base; } ;
struct Scsi_Host {int this_id; } ;

/* Variables and functions */
 int BCTL_BUSEN ; 
 int BCTL_SEL ; 
 int FUNC0 (int) ; 
 int BSTAT_BSY ; 
 int PARITY_MASK ; 
 scalar_t__ REG_ACTL ; 
 scalar_t__ REG_BCTL ; 
 scalar_t__ REG_BSTAT ; 
 scalar_t__ REG_SCSI_DATA_NOACK ; 
 int /*<<< orphan*/  FUNC1 (struct fdomain*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 struct fdomain* FUNC5 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC6(struct Scsi_Host *sh, int target)
{
	int status;
	unsigned long timeout;
	struct fdomain *fd = FUNC5(sh);

	FUNC4(BCTL_BUSEN | BCTL_SEL, fd->base + REG_BCTL);
	FUNC4(FUNC0(sh->this_id) | FUNC0(target), fd->base + REG_SCSI_DATA_NOACK);

	/* Stop arbitration and enable parity */
	FUNC4(PARITY_MASK, fd->base + REG_ACTL);

	timeout = 350;	/* 350 msec */

	do {
		status = FUNC2(fd->base + REG_BSTAT);
		if (status & BSTAT_BSY) {
			/* Enable SCSI Bus */
			/* (on error, should make bus idle with 0) */
			FUNC4(BCTL_BUSEN, fd->base + REG_BCTL);
			return 0;
		}
		FUNC3(1);
	} while (--timeout);
	FUNC1(fd);
	return 1;
}