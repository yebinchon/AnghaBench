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
struct esas2r_vda_ae {int /*<<< orphan*/  vda_ae; int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus_number; int /*<<< orphan*/  signature; } ;
struct esas2r_fw_event_work {int type; int /*<<< orphan*/  work; int /*<<< orphan*/  list; struct esas2r_adapter* a; int /*<<< orphan*/ * data; } ;
struct esas2r_adapter {int /*<<< orphan*/  fw_event_lock; int /*<<< orphan*/  fw_event_q; int /*<<< orphan*/  fw_event_list; TYPE_2__* pcid; } ;
typedef  enum fw_event_type { ____Placeholder_fw_event_type } fw_event_type ;
struct TYPE_4__ {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAS2R_LOG_WARN ; 
 int /*<<< orphan*/  ESAS2R_VDA_EVENT_SIG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  esas2r_firmware_event_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int fw_event_vda_ae ; 
 struct esas2r_fw_event_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct esas2r_adapter *a,
			   enum fw_event_type type,
			   void *data,
			   int data_sz)
{
	struct esas2r_fw_event_work *fw_event;
	unsigned long flags;

	fw_event = FUNC2(sizeof(struct esas2r_fw_event_work), GFP_ATOMIC);
	if (!fw_event) {
		FUNC1(ESAS2R_LOG_WARN,
			   "esas2r_queue_fw_event failed to alloc");
		return;
	}

	if (type == fw_event_vda_ae) {
		struct esas2r_vda_ae *ae =
			(struct esas2r_vda_ae *)fw_event->data;

		ae->signature = ESAS2R_VDA_EVENT_SIG;
		ae->bus_number = a->pcid->bus->number;
		ae->devfn = a->pcid->devfn;
		FUNC4(&ae->vda_ae, data, sizeof(ae->vda_ae));
	} else {
		FUNC4(fw_event->data, data, data_sz);
	}

	fw_event->type = type;
	fw_event->a = a;

	FUNC8(&a->fw_event_lock, flags);
	FUNC3(&fw_event->list, &a->fw_event_list);
	FUNC0(&fw_event->work, esas2r_firmware_event_work);
	FUNC6(
		FUNC7(), a->fw_event_q, &fw_event->work,
		FUNC5(1));
	FUNC9(&a->fw_event_lock, flags);
}