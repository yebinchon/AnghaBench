#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qeth_qdio_out_q {int queue_no; struct qeth_card* card; int /*<<< orphan*/  napi; int /*<<< orphan*/  set_pci_flags_count; int /*<<< orphan*/  used_buffers; int /*<<< orphan*/  do_pack; TYPE_1__* bufstates; struct qeth_qdio_out_buffer** bufs; } ;
struct qeth_qdio_out_buffer {int next_element_to_fill; TYPE_3__* buffer; } ;
struct qeth_card {int dummy; } ;
struct TYPE_6__ {TYPE_2__* element; } ;
struct TYPE_5__ {int /*<<< orphan*/  sflags; int /*<<< orphan*/  eflags; } ;
struct TYPE_4__ {struct qeth_qdio_out_buffer* user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int ENOBUFS ; 
 scalar_t__ FUNC1 (struct qeth_card*) ; 
 unsigned int QDIO_FLAG_PCI_OUT ; 
 unsigned int QDIO_FLAG_SYNC_OUTPUT ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int,char*,int) ; 
 scalar_t__ QETH_HIGH_WATERMARK_PACK ; 
 scalar_t__ QETH_WATERMARK_PACK_FUZZ ; 
 int /*<<< orphan*/  SBAL_EFLAGS_LAST_ENTRY ; 
 int /*<<< orphan*/  SBAL_SFLAGS0_PCI_REQ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 

__attribute__((used)) static void FUNC9(struct qeth_qdio_out_q *queue, int index,
			       int count)
{
	struct qeth_card *card = queue->card;
	struct qeth_qdio_out_buffer *buf;
	int rc;
	int i;
	unsigned int qdio_flags;

	for (i = index; i < index + count; ++i) {
		int bidx = i % QDIO_MAX_BUFFERS_PER_Q;
		buf = queue->bufs[bidx];
		buf->buffer->element[buf->next_element_to_fill - 1].eflags |=
				SBAL_EFLAGS_LAST_ENTRY;

		if (queue->bufstates)
			queue->bufstates[bidx].user = buf;

		if (FUNC1(queue->card))
			continue;

		if (!queue->do_pack) {
			if ((FUNC5(&queue->used_buffers) >=
				(QETH_HIGH_WATERMARK_PACK -
				 QETH_WATERMARK_PACK_FUZZ)) &&
			    !FUNC5(&queue->set_pci_flags_count)) {
				/* it's likely that we'll go to packing
				 * mode soon */
				FUNC4(&queue->set_pci_flags_count);
				buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
			}
		} else {
			if (!FUNC5(&queue->set_pci_flags_count)) {
				/*
				 * there's no outstanding PCI any more, so we
				 * have to request a PCI to be sure the the PCI
				 * will wake at some time in the future then we
				 * can flush packed buffers that might still be
				 * hanging around, which can happen if no
				 * further send was requested by the stack
				 */
				FUNC4(&queue->set_pci_flags_count);
				buf->buffer->element[0].sflags |= SBAL_SFLAGS0_PCI_REQ;
			}
		}
	}

	qdio_flags = QDIO_FLAG_SYNC_OUTPUT;
	if (FUNC5(&queue->set_pci_flags_count))
		qdio_flags |= QDIO_FLAG_PCI_OUT;
	rc = FUNC6(FUNC0(queue->card), qdio_flags,
		     queue->queue_no, index, count);

	/* Fake the TX completion interrupt: */
	if (FUNC1(card))
		FUNC7(&queue->napi);

	if (rc) {
		/* ignore temporary SIGA errors without busy condition */
		if (rc == -ENOBUFS)
			return;
		FUNC2(queue->card, 2, "flushbuf");
		FUNC3(queue->card, 2, " q%d", queue->queue_no);
		FUNC3(queue->card, 2, " idx%d", index);
		FUNC3(queue->card, 2, " c%d", count);
		FUNC3(queue->card, 2, " err%d", rc);

		/* this must not happen under normal circumstances. if it
		 * happens something is really wrong -> recover */
		FUNC8(queue->card);
		return;
	}
}