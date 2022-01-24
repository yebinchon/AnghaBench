#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ibmvfc_host {int disc_buf_sz; int /*<<< orphan*/  disc_buf_dma; } ;
struct TYPE_6__ {void* len; int /*<<< orphan*/  va; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; void* opcode; void* version; } ;
struct ibmvfc_discover_targets {TYPE_3__ buffer; void* bufflen; TYPE_2__ common; } ;
struct TYPE_4__ {struct ibmvfc_discover_targets discover_targets; } ;
struct ibmvfc_event {TYPE_1__ iu; } ;

/* Variables and functions */
 int IBMVFC_DISC_TARGETS ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_INIT_WAIT ; 
 int /*<<< orphan*/  IBMVFC_LINK_DEAD ; 
 int /*<<< orphan*/  IBMVFC_MAD_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_timeout ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_host*,char*) ; 
 int /*<<< orphan*/  ibmvfc_discover_targets_done ; 
 struct ibmvfc_event* FUNC4 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmvfc_event*,struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ibmvfc_discover_targets*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct ibmvfc_host *vhost)
{
	struct ibmvfc_discover_targets *mad;
	struct ibmvfc_event *evt = FUNC4(vhost);

	FUNC5(evt, ibmvfc_discover_targets_done, IBMVFC_MAD_FORMAT);
	mad = &evt->iu.discover_targets;
	FUNC9(mad, 0, sizeof(*mad));
	mad->common.version = FUNC1(1);
	mad->common.opcode = FUNC1(IBMVFC_DISC_TARGETS);
	mad->common.length = FUNC0(sizeof(*mad));
	mad->bufflen = FUNC1(vhost->disc_buf_sz);
	mad->buffer.va = FUNC2(vhost->disc_buf_dma);
	mad->buffer.len = FUNC1(vhost->disc_buf_sz);
	FUNC8(vhost, IBMVFC_HOST_ACTION_INIT_WAIT);

	if (!FUNC7(evt, vhost, default_timeout))
		FUNC3(vhost, "Sent discover targets\n");
	else
		FUNC6(vhost, IBMVFC_LINK_DEAD);
}