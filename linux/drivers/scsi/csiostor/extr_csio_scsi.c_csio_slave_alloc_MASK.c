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
struct scsi_device {struct csio_lnode* hostdata; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct csio_lnode {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 struct fc_rport* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct scsi_device *sdev)
{
	struct fc_rport *rport = FUNC2(FUNC1(sdev));

	if (!rport || FUNC0(rport))
		return -ENXIO;

	sdev->hostdata = *((struct csio_lnode **)(rport->dd_data));

	return 0;
}