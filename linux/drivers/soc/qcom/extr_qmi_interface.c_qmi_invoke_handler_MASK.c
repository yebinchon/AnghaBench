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
struct sockaddr_qrtr {int dummy; } ;
struct qmi_txn {int dummy; } ;
struct qmi_msg_handler {scalar_t__ type; scalar_t__ msg_id; int /*<<< orphan*/  (* fn ) (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,void*) ;int /*<<< orphan*/  ei; int /*<<< orphan*/  decoded_size; } ;
struct qmi_header {scalar_t__ type; scalar_t__ msg_id; } ;
struct qmi_handle {struct qmi_msg_handler* handlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (void const*,size_t,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct qmi_handle*,struct sockaddr_qrtr*,struct qmi_txn*,void*) ; 

__attribute__((used)) static void FUNC5(struct qmi_handle *qmi, struct sockaddr_qrtr *sq,
			       struct qmi_txn *txn, const void *buf, size_t len)
{
	const struct qmi_msg_handler *handler;
	const struct qmi_header *hdr = buf;
	void *dest;
	int ret;

	if (!qmi->handlers)
		return;

	for (handler = qmi->handlers; handler->fn; handler++) {
		if (handler->type == hdr->type &&
		    handler->msg_id == hdr->msg_id)
			break;
	}

	if (!handler->fn)
		return;

	dest = FUNC1(handler->decoded_size, GFP_KERNEL);
	if (!dest)
		return;

	ret = FUNC3(buf, len, handler->ei, dest);
	if (ret < 0)
		FUNC2("failed to decode incoming message\n");
	else
		handler->fn(qmi, sq, txn, dest);

	FUNC0(dest);
}