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
struct scsi_device {int dummy; } ;
struct fc_rport {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FC_FCP_DFLT_QUEUE_DEPTH ; 
 scalar_t__ FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 struct fc_rport* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct scsi_device *sdev)
{
	struct fc_rport *rport = FUNC3(FUNC2(sdev));

	if (!rport || FUNC0(rport))
		return -ENXIO;

	FUNC1(sdev, FC_FCP_DFLT_QUEUE_DEPTH);
	return 0;
}