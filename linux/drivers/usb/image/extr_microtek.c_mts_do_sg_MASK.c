#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; } ;
struct TYPE_9__ {TYPE_1__* curr_sg; int /*<<< orphan*/  data_pipe; TYPE_5__* srb; int /*<<< orphan*/  fragment; } ;
struct TYPE_8__ {int result; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_ERROR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_6__* context ; 
 void FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (struct urb*)) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10 (struct urb* transfer)
{
	int status = transfer->status;
	FUNC1();

	FUNC0("Processing fragment %d of %d\n", context->fragment,
	                                          FUNC5(context->srb));

	if (FUNC9(status)) {
                context->srb->result = (status == -ENOENT ? DID_ABORT : DID_ERROR)<<16;
		FUNC4(transfer);
        }

	context->curr_sg = FUNC7(context->curr_sg);
	FUNC3(transfer,
			   context->data_pipe,
			   FUNC8(context->curr_sg),
			   context->curr_sg->length,
			   FUNC6(context->curr_sg) ?
			   mts_data_done : mts_do_sg);
}