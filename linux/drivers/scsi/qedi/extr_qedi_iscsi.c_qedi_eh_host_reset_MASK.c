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
struct scsi_cmnd {TYPE_1__* device; } ;
struct qedi_ctx {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 struct qedi_ctx* FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (struct qedi_ctx*) ; 

__attribute__((used)) static int FUNC2(struct scsi_cmnd *cmd)
{
	struct Scsi_Host *shost = cmd->device->host;
	struct qedi_ctx *qedi;

	qedi = FUNC0(shost);

	return FUNC1(qedi);
}