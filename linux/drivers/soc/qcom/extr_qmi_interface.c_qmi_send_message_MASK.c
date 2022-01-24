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
struct qmi_txn {int /*<<< orphan*/  id; } ;
struct qmi_handle {int /*<<< orphan*/  sock_lock; scalar_t__ sock; } ;
struct qmi_elem_info {int dummy; } ;
struct msghdr {int msg_namelen; struct sockaddr_qrtr* msg_name; } ;
struct kvec {size_t iov_len; void* iov_base; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EPIPE ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (scalar_t__,struct msghdr*,struct kvec*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void* FUNC7 (int,int,size_t*,int /*<<< orphan*/ ,struct qmi_elem_info*,void const*) ; 

__attribute__((used)) static ssize_t FUNC8(struct qmi_handle *qmi,
				struct sockaddr_qrtr *sq, struct qmi_txn *txn,
				int type, int msg_id, size_t len,
				struct qmi_elem_info *ei, const void *c_struct)
{
	struct msghdr msghdr = {};
	struct kvec iv;
	void *msg;
	int ret;

	msg = FUNC7(type,
				 msg_id, &len,
				 txn->id, ei,
				 c_struct);
	if (FUNC0(msg))
		return FUNC1(msg);

	iv.iov_base = msg;
	iv.iov_len = len;

	if (sq) {
		msghdr.msg_name = sq;
		msghdr.msg_namelen = sizeof(*sq);
	}

	FUNC4(&qmi->sock_lock);
	if (qmi->sock) {
		ret = FUNC2(qmi->sock, &msghdr, &iv, 1, len);
		if (ret < 0)
			FUNC6("failed to send QMI message\n");
	} else {
		ret = -EPIPE;
	}
	FUNC5(&qmi->sock_lock);

	FUNC3(msg);

	return ret < 0 ? ret : 0;
}