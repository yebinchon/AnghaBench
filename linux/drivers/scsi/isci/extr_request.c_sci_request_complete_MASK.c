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
struct TYPE_2__ {int current_state_id; } ;
struct isci_request {TYPE_1__ sm; int /*<<< orphan*/  saved_rx_frame_index; struct isci_host* owning_controller; } ;
struct isci_host {int dummy; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;
typedef  enum sci_base_request_states { ____Placeholder_sci_base_request_states } sci_base_request_states ;

/* Variables and functions */
 int SCI_FAILURE_INVALID_STATE ; 
 int SCI_REQ_COMPLETED ; 
 int /*<<< orphan*/  SCI_REQ_FINAL ; 
 int SCI_SUCCESS ; 
 int /*<<< orphan*/  SCU_INVALID_FRAME_INDEX ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_host*,int /*<<< orphan*/ ) ; 

enum sci_status FUNC4(struct isci_request *ireq)
{
	enum sci_base_request_states state;
	struct isci_host *ihost = ireq->owning_controller;

	state = ireq->sm.current_state_id;
	if (FUNC0(state != SCI_REQ_COMPLETED,
		      "isci: request completion from wrong state (%s)\n",
		      FUNC1(state)))
		return SCI_FAILURE_INVALID_STATE;

	if (ireq->saved_rx_frame_index != SCU_INVALID_FRAME_INDEX)
		FUNC3(ihost,
						  ireq->saved_rx_frame_index);

	/* XXX can we just stop the machine and remove the 'final' state? */
	FUNC2(&ireq->sm, SCI_REQ_FINAL);
	return SCI_SUCCESS;
}