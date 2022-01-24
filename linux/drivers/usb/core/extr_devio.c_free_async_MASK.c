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
struct async {int /*<<< orphan*/  mem_usage; TYPE_1__* urb; TYPE_2__* usbm; scalar_t__ cred; int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {int /*<<< orphan*/  urb_use_count; } ;
struct TYPE_3__ {int num_sgs; struct async* setup_packet; struct async* transfer_buffer; struct async* sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct async*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct async*) ; 
 struct async* FUNC5 (struct async*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct async *as)
{
	int i;

	FUNC3(as->pid);
	if (as->cred)
		FUNC2(as->cred);
	for (i = 0; i < as->urb->num_sgs; i++) {
		if (FUNC4(&as->urb->sg[i]))
			FUNC1(FUNC5(&as->urb->sg[i]));
	}

	FUNC1(as->urb->sg);
	if (as->usbm == NULL)
		FUNC1(as->urb->transfer_buffer);
	else
		FUNC0(as->usbm, &as->usbm->urb_use_count);

	FUNC1(as->urb->setup_packet);
	FUNC6(as->urb);
	FUNC7(as->mem_usage);
	FUNC1(as);
}