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
struct scsi_target {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ STARGET_DEL ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_target*) ; 

void FUNC2(struct scsi_target *starget)
{
	/*
	 * serious problem if this triggers: STARGET_DEL is only set in the if
	 * the reap_ref drops to zero, so we're trying to do another final put
	 * on an already released kref
	 */
	FUNC0(starget->state == STARGET_DEL);
	FUNC1(starget);
}