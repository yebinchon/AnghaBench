#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dpc_flags; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  REGISTER_FDMI_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static void
FUNC2(struct Scsi_Host *shost)
{
	scsi_qla_host_t *vha = FUNC1(shost);

	FUNC0(REGISTER_FDMI_NEEDED, &vha->dpc_flags);
}