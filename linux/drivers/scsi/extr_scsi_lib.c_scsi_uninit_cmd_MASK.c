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
struct scsi_driver {int /*<<< orphan*/  (* uninit_command ) (struct scsi_cmnd*) ;} ;
struct scsi_cmnd {int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct scsi_driver* FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC3(struct scsi_cmnd *cmd)
{
	if (!FUNC0(cmd->request)) {
		struct scsi_driver *drv = FUNC1(cmd);

		if (drv->uninit_command)
			drv->uninit_command(cmd);
	}
}