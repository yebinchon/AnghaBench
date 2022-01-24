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
 int /*<<< orphan*/  SCB_DEVICE_RESET ; 
 int FUNC0 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(struct scsi_cmnd *cmd)
{
	int error;

	error = FUNC0(cmd, SCB_DEVICE_RESET);
	if (error != 0)
		FUNC1("aic7xxx_dev_reset returns 0x%x\n", error);
	return (error);
}