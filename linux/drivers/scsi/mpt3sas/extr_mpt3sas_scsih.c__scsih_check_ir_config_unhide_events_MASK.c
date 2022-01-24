#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct _tr_list {int /*<<< orphan*/  list; scalar_t__ handle; } ;
struct MPT3SAS_ADAPTER {int /*<<< orphan*/  delayed_tr_list; int /*<<< orphan*/  pd_handles; scalar_t__ is_warpdrive; } ;
struct TYPE_5__ {int NumElements; int /*<<< orphan*/ * ConfigElement; int /*<<< orphan*/  Flags; } ;
struct TYPE_4__ {scalar_t__ ReasonCode; int /*<<< orphan*/  VolDevHandle; int /*<<< orphan*/  PhysDiskDevHandle; } ;
typedef  TYPE_1__ Mpi2EventIrConfigElement_t ;
typedef  TYPE_2__ Mpi2EventDataIrConfigChangeList_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG ; 
 scalar_t__ MPI2_EVENT_IR_CHANGE_RC_REMOVED ; 
 scalar_t__ MPI2_EVENT_IR_CHANGE_RC_UNHIDE ; 
 scalar_t__ MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct MPT3SAS_ADAPTER*,char*,scalar_t__) ; 
 struct _tr_list* FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct MPT3SAS_ADAPTER *ioc,
	Mpi2EventDataIrConfigChangeList_t *event_data)
{
	Mpi2EventIrConfigElement_t *element;
	int i;
	u16 handle, volume_handle, a, b;
	struct _tr_list *delayed_tr;

	a = 0;
	b = 0;

	if (ioc->is_warpdrive)
		return;

	/* Volume Resets for Deleted or Removed */
	element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
	for (i = 0; i < event_data->NumElements; i++, element++) {
		if (FUNC11(event_data->Flags) &
		    MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG)
			continue;
		if (element->ReasonCode ==
		    MPI2_EVENT_IR_CHANGE_RC_VOLUME_DELETED ||
		    element->ReasonCode ==
		    MPI2_EVENT_IR_CHANGE_RC_REMOVED) {
			volume_handle = FUNC10(element->VolDevHandle);
			FUNC2(ioc, volume_handle);
			FUNC3(volume_handle, &a, &b);
		}
	}

	/* Volume Resets for UNHIDE events */
	element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
	for (i = 0; i < event_data->NumElements; i++, element++) {
		if (FUNC11(event_data->Flags) &
		    MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG)
			continue;
		if (element->ReasonCode == MPI2_EVENT_IR_CHANGE_RC_UNHIDE) {
			volume_handle = FUNC10(element->VolDevHandle);
			FUNC3(volume_handle, &a, &b);
		}
	}

	if (a)
		FUNC5(ioc, a);
	if (b)
		FUNC5(ioc, b);

	/* PD target resets */
	element = (Mpi2EventIrConfigElement_t *)&event_data->ConfigElement[0];
	for (i = 0; i < event_data->NumElements; i++, element++) {
		if (element->ReasonCode != MPI2_EVENT_IR_CHANGE_RC_UNHIDE)
			continue;
		handle = FUNC10(element->PhysDiskDevHandle);
		volume_handle = FUNC10(element->VolDevHandle);
		FUNC6(handle, ioc->pd_handles);
		if (!volume_handle)
			FUNC4(ioc, handle);
		else if (volume_handle == a || volume_handle == b) {
			delayed_tr = FUNC9(sizeof(*delayed_tr), GFP_ATOMIC);
			FUNC0(!delayed_tr);
			FUNC1(&delayed_tr->list);
			delayed_tr->handle = handle;
			FUNC12(&delayed_tr->list, &ioc->delayed_tr_list);
			FUNC7(ioc,
				   FUNC8(ioc, "DELAYED:tr:handle(0x%04x), (open)\n",
					    handle));
		} else
			FUNC4(ioc, handle);
	}
}