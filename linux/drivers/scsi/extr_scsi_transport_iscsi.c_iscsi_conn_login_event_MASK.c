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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_3__ {int state; int /*<<< orphan*/  sid; int /*<<< orphan*/  cid; } ;
struct TYPE_4__ {TYPE_1__ conn_login; } ;
struct iscsi_uevent {TYPE_2__ r; int /*<<< orphan*/  type; int /*<<< orphan*/  transport_handle; } ;
struct iscsi_internal {int dummy; } ;
struct iscsi_cls_conn {int /*<<< orphan*/  cid; int /*<<< orphan*/  transport; } ;
typedef  enum iscsi_conn_state { ____Placeholder_iscsi_conn_state } iscsi_conn_state ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ISCSI_KEVENT_CONN_LOGIN_STATE ; 
 int /*<<< orphan*/  ISCSI_NL_GRP_ISCSID ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 struct nlmsghdr* FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iscsi_cls_conn*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct iscsi_internal* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iscsi_uevent* FUNC7 (struct nlmsghdr*) ; 
 int FUNC8 (int) ; 

void FUNC9(struct iscsi_cls_conn *conn,
			    enum iscsi_conn_state state)
{
	struct nlmsghdr *nlh;
	struct sk_buff  *skb;
	struct iscsi_uevent *ev;
	struct iscsi_internal *priv;
	int len = FUNC8(sizeof(*ev));

	priv = FUNC5(conn->transport);
	if (!priv)
		return;

	skb = FUNC1(len, GFP_ATOMIC);
	if (!skb) {
		FUNC2(KERN_ERR, conn, "gracefully ignored "
				      "conn login (%d)\n", state);
		return;
	}

	nlh = FUNC0(skb, 0, 0, 0, (len - sizeof(*nlh)), 0);
	ev = FUNC7(nlh);
	ev->transport_handle = FUNC4(conn->transport);
	ev->type = ISCSI_KEVENT_CONN_LOGIN_STATE;
	ev->r.conn_login.state = state;
	ev->r.conn_login.cid = conn->cid;
	ev->r.conn_login.sid = FUNC3(conn);
	FUNC6(skb, ISCSI_NL_GRP_ISCSID, GFP_ATOMIC);

	FUNC2(KERN_INFO, conn, "detected conn login (%d)\n",
			      state);
}