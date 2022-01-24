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
struct qeth_qdio_out_buffer {int /*<<< orphan*/  state; scalar_t__* is_header; int /*<<< orphan*/  q; } ;
struct qeth_card {int dummy; } ;
struct qaob {unsigned long user1; unsigned long aorc; unsigned int sb_count; scalar_t__* sba; } ;
typedef  enum iucv_tx_notify { ____Placeholder_iucv_tx_notify } iucv_tx_notify ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,int,char*,unsigned long) ; 
 unsigned int FUNC2 (struct qeth_card*) ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_HANDLED_DELAYED ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_IN_CQ ; 
 scalar_t__ QETH_QDIO_BUF_PENDING ; 
 scalar_t__ QETH_QDIO_BUF_PRIMED ; 
 int TX_NOTIFY_DELAYED_OK ; 
 int TX_NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct qaob*) ; 
 int FUNC10 (unsigned long,int) ; 
 int /*<<< orphan*/  qeth_core_header_cache ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct qeth_qdio_out_buffer*,int) ; 

__attribute__((used)) static void FUNC12(struct qeth_card *card,
				 unsigned long phys_aob_addr)
{
	struct qaob *aob;
	struct qeth_qdio_out_buffer *buffer;
	enum iucv_tx_notify notification;
	unsigned int i;

	aob = (struct qaob *) FUNC8(phys_aob_addr);
	FUNC0(card, 5, "haob");
	FUNC1(card, 5, "%lx", phys_aob_addr);
	buffer = (struct qeth_qdio_out_buffer *) aob->user1;
	FUNC1(card, 5, "%lx", aob->user1);

	if (FUNC4(&buffer->state, QETH_QDIO_BUF_PRIMED,
			   QETH_QDIO_BUF_IN_CQ) == QETH_QDIO_BUF_PRIMED) {
		notification = TX_NOTIFY_OK;
	} else {
		FUNC3(FUNC5(&buffer->state) !=
							QETH_QDIO_BUF_PENDING);
		FUNC6(&buffer->state, QETH_QDIO_BUF_IN_CQ);
		notification = TX_NOTIFY_DELAYED_OK;
	}

	if (aob->aorc != 0)  {
		FUNC1(card, 2, "aorc%02X", aob->aorc);
		notification = FUNC10(aob->aorc, 1);
	}
	FUNC11(buffer->q, buffer, notification);

	/* Free dangling allocations. The attached skbs are handled by
	 * qeth_cleanup_handled_pending().
	 */
	for (i = 0;
	     i < aob->sb_count && i < FUNC2(card);
	     i++) {
		if (aob->sba[i] && buffer->is_header[i])
			FUNC7(qeth_core_header_cache,
					(void *) aob->sba[i]);
	}
	FUNC6(&buffer->state, QETH_QDIO_BUF_HANDLED_DELAYED);

	FUNC9(aob);
}