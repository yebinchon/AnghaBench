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
struct fc_vport {int dummy; } ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; struct fc_vport* vport; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPORT_MUTEX_VN_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fc_lport* FUNC4 (struct Scsi_Host*) ; 
 struct Scsi_Host* FUNC5 (struct fc_vport*) ; 

void FUNC6(struct fc_lport *vn_port)
{
	struct fc_vport *vport = vn_port->vport;
	struct Scsi_Host *shost = FUNC5(vport);
	struct fc_lport *n_port = FUNC4(shost);

	FUNC1(&n_port->lp_mutex);
	FUNC2(&vn_port->lp_mutex, LPORT_MUTEX_VN_PORT);
	FUNC0(n_port, vn_port);
	FUNC3(&vn_port->lp_mutex);
	FUNC3(&n_port->lp_mutex);
}