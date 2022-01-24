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
struct qeth_qdio_out_q {int max_elements; int /*<<< orphan*/  set_pci_flags_count; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  state; scalar_t__ bytes; scalar_t__ next_element_to_fill; TYPE_2__* buffer; scalar_t__* is_header; } ;
struct TYPE_4__ {TYPE_1__* element; } ;
struct TYPE_3__ {int sflags; scalar_t__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  QETH_QDIO_BUF_EMPTY ; 
 int SBAL_SFLAGS0_PCI_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  qeth_core_header_cache ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_qdio_out_buffer*,int,int) ; 

__attribute__((used)) static void FUNC5(struct qeth_qdio_out_q *queue,
				     struct qeth_qdio_out_buffer *buf,
				     bool error, int budget)
{
	int i;

	/* is PCI flag set on buffer? */
	if (buf->buffer->element[0].sflags & SBAL_SFLAGS0_PCI_REQ)
		FUNC0(&queue->set_pci_flags_count);

	FUNC4(buf, error, budget);

	for (i = 0; i < queue->max_elements; ++i) {
		if (buf->buffer->element[i].addr && buf->is_header[i])
			FUNC2(qeth_core_header_cache,
				buf->buffer->element[i].addr);
		buf->is_header[i] = 0;
	}

	FUNC3(buf->buffer, queue->max_elements);
	buf->next_element_to_fill = 0;
	buf->bytes = 0;
	FUNC1(&buf->state, QETH_QDIO_BUF_EMPTY);
}