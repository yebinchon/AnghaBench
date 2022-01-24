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
typedef  scalar_t__ u16 ;
struct pqi_event {int /*<<< orphan*/  ofa_cancel_reason; int /*<<< orphan*/  ofa_bytes_requested; int /*<<< orphan*/  event_id; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  ofa_mutex; int /*<<< orphan*/  ctrl_id; TYPE_1__* pci_dev; scalar_t__ soft_reset_handshake_supported; } ;
typedef  enum pqi_soft_reset_status { ____Placeholder_pqi_soft_reset_status } pqi_soft_reset_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PQI_EVENT_OFA_CANCELLED ; 
 scalar_t__ PQI_EVENT_OFA_MEMORY_ALLOCATION ; 
 scalar_t__ PQI_EVENT_OFA_QUIESCE ; 
 int RESET_INITIATE_FIRMWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*,struct pqi_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct pqi_ctrl_info*,int) ; 

__attribute__((used)) static void FUNC12(struct pqi_ctrl_info *ctrl_info,
	struct pqi_event *event)
{
	u16 event_id;
	enum pqi_soft_reset_status status;

	event_id = FUNC1(&event->event_id);

	FUNC3(&ctrl_info->ofa_mutex);

	if (event_id == PQI_EVENT_OFA_QUIESCE) {
		FUNC0(&ctrl_info->pci_dev->dev,
			 "Received Online Firmware Activation quiesce event for controller %u\n",
			 ctrl_info->ctrl_id);
		FUNC6(ctrl_info);
		FUNC5(ctrl_info, event);
		if (ctrl_info->soft_reset_handshake_supported) {
			status = FUNC10(ctrl_info);
			FUNC11(ctrl_info, status);
		} else {
			FUNC11(ctrl_info,
					RESET_INITIATE_FIRMWARE);
		}

	} else if (event_id == PQI_EVENT_OFA_MEMORY_ALLOCATION) {
		FUNC5(ctrl_info, event);
		FUNC9(ctrl_info,
			FUNC2(event->ofa_bytes_requested));
		FUNC8(ctrl_info);
	} else if (event_id == PQI_EVENT_OFA_CANCELLED) {
		FUNC7(ctrl_info);
		FUNC5(ctrl_info, event);
		FUNC0(&ctrl_info->pci_dev->dev,
			 "Online Firmware Activation(%u) cancel reason : %u\n",
			 ctrl_info->ctrl_id, event->ofa_cancel_reason);
	}

	FUNC4(&ctrl_info->ofa_mutex);
}