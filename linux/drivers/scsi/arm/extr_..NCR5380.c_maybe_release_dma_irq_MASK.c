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
struct NCR5380_hostdata {int /*<<< orphan*/  selecting; int /*<<< orphan*/  connected; int /*<<< orphan*/  autosense; int /*<<< orphan*/  unissued; int /*<<< orphan*/  disconnected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct NCR5380_hostdata* FUNC2 (struct Scsi_Host*) ; 

__attribute__((used)) static inline void FUNC3(struct Scsi_Host *instance)
{
	struct NCR5380_hostdata *hostdata = FUNC2(instance);

	/* Caller does the locking needed to set & test these data atomically */
	if (FUNC1(&hostdata->disconnected) &&
	    FUNC1(&hostdata->unissued) &&
	    FUNC1(&hostdata->autosense) &&
	    !hostdata->connected &&
	    !hostdata->selecting) {
		FUNC0(instance);
	}
}