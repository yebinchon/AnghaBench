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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int BUSFREE ; 
 int /*<<< orphan*/  CURRENT_SC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ MSGILEN ; 
 scalar_t__ MSGOLEN ; 
 int P_MSGI ; 
 int /*<<< orphan*/  SCSISIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int SIG_ATNO ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct Scsi_Host *shpnt)
{
	if(MSGILEN>0)
		FUNC2(KERN_WARNING, CURRENT_SC,
			    "target left before message completed (%d)\n",
			    MSGILEN);

	if (MSGOLEN > 0 && !(FUNC0(SSTAT1) & BUSFREE))
		FUNC1(SCSISIG, P_MSGI | SIG_ATNO);
}