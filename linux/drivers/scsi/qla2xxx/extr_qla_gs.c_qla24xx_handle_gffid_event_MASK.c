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
struct event_arg {int /*<<< orphan*/ * fcport; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
typedef  int /*<<< orphan*/  fc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(scsi_qla_host_t *vha, struct event_arg *ea)
{
	fc_port_t *fcport = ea->fcport;

	FUNC0(vha, fcport);
}