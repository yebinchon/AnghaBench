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
struct qeth_qdio_out_q {scalar_t__ do_pack; int /*<<< orphan*/  card; int /*<<< orphan*/  used_buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ QETH_LOW_WATERMARK_PACK ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_qdio_out_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  packing_mode_switch ; 
 int FUNC3 (struct qeth_qdio_out_q*) ; 

__attribute__((used)) static int FUNC4(struct qeth_qdio_out_q *queue)
{
	if (queue->do_pack) {
		if (FUNC2(&queue->used_buffers)
		    <= QETH_LOW_WATERMARK_PACK) {
			/* switch PACKING -> non-PACKING */
			FUNC0(queue->card, 6, "pack->np");
			FUNC1(queue, packing_mode_switch);
			queue->do_pack = 0;
			return FUNC3(queue);
		}
	}
	return 0;
}