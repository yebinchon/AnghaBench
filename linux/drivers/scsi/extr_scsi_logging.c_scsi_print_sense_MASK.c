#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int /*<<< orphan*/  sense_buffer; TYPE_1__* request; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(const struct scsi_cmnd *cmd)
{
	FUNC1(cmd->device, FUNC0(cmd), cmd->request->tag,
			     cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE);
}