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
typedef  size_t u32 ;
struct isci_request {scalar_t__ io_tag; int /*<<< orphan*/  flags; } ;
struct isci_host {scalar_t__* io_request_sequence; struct isci_request** reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  IREQ_ACTIVE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ SCI_CONTROLLER_INVALID_IO_TAG ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_request*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct isci_host *ihost, u32 ent)
{
	u32 index = FUNC1(ent);
	struct isci_request *ireq = ihost->reqs[index];

	/* Make sure that we really want to process this IO request */
	if (FUNC3(IREQ_ACTIVE, &ireq->flags) &&
	    ireq->io_tag != SCI_CONTROLLER_INVALID_IO_TAG &&
	    FUNC0(ireq->io_tag) == ihost->io_request_sequence[index])
		/* Yep this is a valid io request pass it along to the
		 * io request handler
		 */
		FUNC2(ireq, ent);
}