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
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {struct socket* sock; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_err; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_conn*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iscsi_cls_conn *cls_conn, int flag)
{
	struct iscsi_conn *conn = cls_conn->dd_data;
	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
	struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
	struct socket *sock = tcp_sw_conn->sock;

	/* userspace may have goofed up and not bound us */
	if (!sock)
		return;

	sock->sk->sk_err = EIO;
	FUNC4(FUNC3(sock->sk));

	/* stop xmit side */
	FUNC1(conn);

	/* stop recv side and release socket */
	FUNC2(conn);

	FUNC0(cls_conn, flag);
}