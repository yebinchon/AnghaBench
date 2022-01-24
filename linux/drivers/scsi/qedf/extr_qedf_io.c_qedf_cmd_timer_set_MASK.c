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
struct qedf_ioreq {int /*<<< orphan*/  timeout_work; } ;
struct qedf_ctx {int /*<<< orphan*/  timer_work_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct qedf_ctx *qedf, struct qedf_ioreq *io_req,
	unsigned int timer_msec)
{
	FUNC1(qedf->timer_work_queue, &io_req->timeout_work,
	    FUNC0(timer_msec));
}