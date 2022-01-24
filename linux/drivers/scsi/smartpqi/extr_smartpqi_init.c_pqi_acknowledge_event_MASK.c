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
struct TYPE_2__ {int /*<<< orphan*/  iu_length; int /*<<< orphan*/  iu_type; } ;
struct pqi_event_acknowledge_request {int /*<<< orphan*/  additional_event_id; int /*<<< orphan*/  event_id; int /*<<< orphan*/  event_type; TYPE_1__ header; } ;
struct pqi_event {int /*<<< orphan*/  additional_event_id; int /*<<< orphan*/  event_id; int /*<<< orphan*/  event_type; } ;
struct pqi_ctrl_info {int dummy; } ;
typedef  int /*<<< orphan*/  request ;

/* Variables and functions */
 scalar_t__ PQI_REQUEST_HEADER_LENGTH ; 
 int /*<<< orphan*/  PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct pqi_event_acknowledge_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*,struct pqi_event_acknowledge_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pqi_ctrl_info *ctrl_info,
	struct pqi_event *event)
{
	struct pqi_event_acknowledge_request request;

	FUNC0(&request, 0, sizeof(request));

	request.header.iu_type = PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT;
	FUNC2(sizeof(request) - PQI_REQUEST_HEADER_LENGTH,
		&request.header.iu_length);
	request.event_type = event->event_type;
	request.event_id = event->event_id;
	request.additional_event_id = event->additional_event_id;

	FUNC1(ctrl_info, &request, sizeof(request));
}