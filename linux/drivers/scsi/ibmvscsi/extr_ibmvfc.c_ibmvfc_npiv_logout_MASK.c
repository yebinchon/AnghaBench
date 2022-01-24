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
struct TYPE_3__ {int /*<<< orphan*/  length; void* opcode; void* version; } ;
struct ibmvfc_npiv_logout_mad {TYPE_1__ common; } ;
struct ibmvfc_host {int dummy; } ;
struct TYPE_4__ {struct ibmvfc_npiv_logout_mad npiv_logout; } ;
struct ibmvfc_event {TYPE_2__ iu; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_LOGO_WAIT ; 
 int /*<<< orphan*/  IBMVFC_LINK_DEAD ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int IBMVFC_NPIV_LOGOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  default_timeout ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_host*,char*) ; 
 struct ibmvfc_event* FUNC3 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ibmvfc_npiv_logout_done ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvfc_npiv_logout_mad*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct ibmvfc_host *vhost)
{
	struct ibmvfc_npiv_logout_mad *mad;
	struct ibmvfc_event *evt;

	evt = FUNC3(vhost);
	FUNC4(evt, ibmvfc_npiv_logout_done, IBMVFC_MAD_FORMAT);

	mad = &evt->iu.npiv_logout;
	FUNC8(mad, 0, sizeof(*mad));
	mad->common.version = FUNC1(1);
	mad->common.opcode = FUNC1(IBMVFC_NPIV_LOGOUT);
	mad->common.length = FUNC0(sizeof(struct ibmvfc_npiv_logout_mad));

	FUNC7(vhost, IBMVFC_HOST_ACTION_LOGO_WAIT);

	if (!FUNC6(evt, vhost, default_timeout))
		FUNC2(vhost, "Sent NPIV logout\n");
	else
		FUNC5(vhost, IBMVFC_LINK_DEAD);
}