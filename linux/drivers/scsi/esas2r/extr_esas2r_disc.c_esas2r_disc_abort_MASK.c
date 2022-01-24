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
struct esas2r_request {scalar_t__ interrupt_cx; } ;
struct esas2r_disc_context {int /*<<< orphan*/  state; } ;
struct esas2r_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCS_DISC_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct esas2r_adapter *a,
			      struct esas2r_request *rq)
{
	struct esas2r_disc_context *dc =
		(struct esas2r_disc_context *)rq->interrupt_cx;

	FUNC0();

	/* abort the current discovery */

	dc->state = DCS_DISC_DONE;

	FUNC1();
}