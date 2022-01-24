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
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  PMCRAID_INTERNAL_TIMEOUT ; 
 int /*<<< orphan*/  RESET_DEVICE_TARGET ; 
 int FUNC0 (struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 

__attribute__((used)) static int FUNC2(struct scsi_cmnd *scmd)
{
	FUNC1(KERN_INFO, scmd,
		    "Doing target reset due to an I/O command timeout.\n");
	return FUNC0(scmd,
				    PMCRAID_INTERNAL_TIMEOUT,
				    RESET_DEVICE_TARGET);
}