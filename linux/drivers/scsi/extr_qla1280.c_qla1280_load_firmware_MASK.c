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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 int FUNC1 (struct scsi_qla_host*) ; 
 int FUNC2 (struct scsi_qla_host*) ; 
 int FUNC3 (struct scsi_qla_host*) ; 
 int FUNC4 (struct scsi_qla_host*) ; 

__attribute__((used)) static int
FUNC5(struct scsi_qla_host *ha)
{
	/* enter with host_lock taken */
	int err;

	err = FUNC1(ha);
	if (err)
		goto out;
	if (FUNC0(ha))
		err = FUNC3(ha);
	else
		err = FUNC2(ha);
	if (err)
		goto out;
	err = FUNC4(ha);
 out:
	return err;
}