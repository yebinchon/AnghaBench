#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  hostt; } ;

/* Variables and functions */
 scalar_t__ SUCCESS ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC5(struct scsi_cmnd *scmd)
{
	if (FUNC4(scmd->device->host->hostt, scmd) != SUCCESS)
		if (FUNC0(scmd) != SUCCESS)
			if (FUNC3(scmd) != SUCCESS)
				if (FUNC1(scmd) != SUCCESS)
					FUNC2(scmd);
}