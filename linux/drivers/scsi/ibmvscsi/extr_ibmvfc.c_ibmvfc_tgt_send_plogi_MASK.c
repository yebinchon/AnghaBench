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
struct ibmvfc_target {int /*<<< orphan*/  kref; int /*<<< orphan*/  scsi_id; scalar_t__ logo_rcvd; struct ibmvfc_host* vhost; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; void* opcode; void* version; } ;
struct ibmvfc_port_login {int /*<<< orphan*/  scsi_id; TYPE_2__ common; } ;
struct ibmvfc_host {scalar_t__ discovery_threads; } ;
struct TYPE_3__ {struct ibmvfc_port_login plogi; } ;
struct ibmvfc_event {TYPE_1__ iu; struct ibmvfc_target* tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int IBMVFC_PORT_LOGIN ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_TGT_ACTION_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_timeout ; 
 scalar_t__ disc_threads ; 
 struct ibmvfc_event* FUNC3 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_release_tgt ; 
 scalar_t__ FUNC5 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_tgt_plogi_done ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_port_login*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ibmvfc_target*,char*) ; 

__attribute__((used)) static void FUNC11(struct ibmvfc_target *tgt)
{
	struct ibmvfc_port_login *plogi;
	struct ibmvfc_host *vhost = tgt->vhost;
	struct ibmvfc_event *evt;

	if (vhost->discovery_threads >= disc_threads)
		return;

	FUNC7(&tgt->kref);
	tgt->logo_rcvd = 0;
	evt = FUNC3(vhost);
	vhost->discovery_threads++;
	FUNC6(tgt, IBMVFC_TGT_ACTION_INIT_WAIT);
	FUNC4(evt, ibmvfc_tgt_plogi_done, IBMVFC_MAD_FORMAT);
	evt->tgt = tgt;
	plogi = &evt->iu.plogi;
	FUNC9(plogi, 0, sizeof(*plogi));
	plogi->common.version = FUNC1(1);
	plogi->common.opcode = FUNC1(IBMVFC_PORT_LOGIN);
	plogi->common.length = FUNC0(sizeof(*plogi));
	plogi->scsi_id = FUNC2(tgt->scsi_id);

	if (FUNC5(evt, vhost, default_timeout)) {
		vhost->discovery_threads--;
		FUNC6(tgt, IBMVFC_TGT_ACTION_NONE);
		FUNC8(&tgt->kref, ibmvfc_release_tgt);
	} else
		FUNC10(tgt, "Sent port login\n");
}