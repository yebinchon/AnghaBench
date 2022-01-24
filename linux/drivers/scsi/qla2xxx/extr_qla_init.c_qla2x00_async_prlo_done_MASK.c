#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  tgt_session; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ fc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FCF_ASYNC_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct scsi_qla_host *vha, fc_port_t *fcport,
    uint16_t *data)
{
	fcport->flags &= ~FCF_ASYNC_ACTIVE;
	/* Don't re-login in target mode */
	if (!fcport->tgt_session)
		FUNC0(vha, fcport, 1, 0);
	FUNC1(fcport, data[0]);
}