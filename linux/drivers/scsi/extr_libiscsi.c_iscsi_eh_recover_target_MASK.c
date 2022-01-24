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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int FAILED ; 
 int FUNC0 (struct scsi_cmnd*) ; 
 int FUNC1 (struct scsi_cmnd*) ; 

int FUNC2(struct scsi_cmnd *sc)
{
	int rc;

	rc = FUNC1(sc);
	if (rc == FAILED)
		rc = FUNC0(sc);
	return rc;
}