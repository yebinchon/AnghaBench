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
struct scm_queue {int /*<<< orphan*/  scmrq; } ;
struct blk_mq_hw_ctx {struct scm_queue* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scm_queue*) ; 

__attribute__((used)) static void FUNC2(struct blk_mq_hw_ctx *hctx, unsigned int idx)
{
	struct scm_queue *qd = hctx->driver_data;

	FUNC0(qd->scmrq);
	FUNC1(hctx->driver_data);
	hctx->driver_data = NULL;
}