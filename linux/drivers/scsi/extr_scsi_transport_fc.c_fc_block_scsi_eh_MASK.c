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
struct scsi_cmnd {int /*<<< orphan*/  device; } ;
struct fc_rport {int dummy; } ;

/* Variables and functions */
 int FAST_IO_FAIL ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct fc_rport* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct scsi_cmnd *cmnd)
{
	struct fc_rport *rport = FUNC3(FUNC2(cmnd->device));

	if (FUNC0(!rport))
		return FAST_IO_FAIL;

	return FUNC1(rport);
}