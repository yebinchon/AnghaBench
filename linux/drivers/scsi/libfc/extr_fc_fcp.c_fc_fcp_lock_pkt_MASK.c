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
struct fc_fcp_pkt {int state; int /*<<< orphan*/  scsi_pkt_lock; } ;

/* Variables and functions */
 int EPERM ; 
 int FC_SRB_COMPL ; 
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC3(struct fc_fcp_pkt *fsp)
{
	FUNC1(&fsp->scsi_pkt_lock);
	if (fsp->state & FC_SRB_COMPL) {
		FUNC2(&fsp->scsi_pkt_lock);
		return -EPERM;
	}

	FUNC0(fsp);
	return 0;
}