#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct socket {TYPE_1__* sk; } ;
struct sockaddr_qrtr {int dummy; } ;
struct sockaddr {int dummy; } ;
struct qmi_handle {int dummy; } ;
struct TYPE_2__ {void* sk_error_report; void* sk_data_ready; struct qmi_handle* sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_QIPCRTR ; 
 struct socket* FUNC0 (int) ; 
 int /*<<< orphan*/  PF_QIPCRTR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC1 (struct socket*,struct sockaddr*) ; 
 void* qmi_data_ready ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct socket**) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

__attribute__((used)) static struct socket *FUNC4(struct qmi_handle *qmi,
				      struct sockaddr_qrtr *sq)
{
	struct socket *sock;
	int ret;

	ret = FUNC2(&init_net, AF_QIPCRTR, SOCK_DGRAM,
			       PF_QIPCRTR, &sock);
	if (ret < 0)
		return FUNC0(ret);

	ret = FUNC1(sock, (struct sockaddr *)sq);
	if (ret < 0) {
		FUNC3(sock);
		return FUNC0(ret);
	}

	sock->sk->sk_user_data = qmi;
	sock->sk->sk_data_ready = qmi_data_ready;
	sock->sk->sk_error_report = qmi_data_ready;

	return sock;
}