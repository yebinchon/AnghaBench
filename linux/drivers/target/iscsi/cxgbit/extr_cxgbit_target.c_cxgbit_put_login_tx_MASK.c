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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct iscsi_login {int* rsp; int* rsp_buf; int /*<<< orphan*/  login_failed; scalar_t__ login_complete; } ;
struct iscsi_conn {int /*<<< orphan*/  login_work; struct cxgbit_sock* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct cxgbit_sock {TYPE_1__ com; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSK_LOGIN_DONE ; 
 int ENOMEM ; 
 int ISCSI_HDR_LEN ; 
 struct sk_buff* FUNC0 (struct cxgbit_sock*,int) ; 
 scalar_t__ FUNC1 (struct cxgbit_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int,int*,int) ; 

int
FUNC7(struct iscsi_conn *conn, struct iscsi_login *login,
		    u32 length)
{
	struct cxgbit_sock *csk = conn->context;
	struct sk_buff *skb;
	u32 padding_buf = 0;
	u8 padding = ((-length) & 3);

	skb = FUNC0(csk, length + padding);
	if (!skb)
		return -ENOMEM;
	FUNC6(skb, 0, login->rsp, ISCSI_HDR_LEN);
	FUNC6(skb, ISCSI_HDR_LEN, login->rsp_buf, length);

	if (padding)
		FUNC6(skb, ISCSI_HDR_LEN + length,
			       &padding_buf, padding);

	if (login->login_complete) {
		if (FUNC2(conn)) {
			FUNC3(skb);
			return -1;
		}

		FUNC5(CSK_LOGIN_DONE, &csk->com.flags);
	}

	if (FUNC1(csk, skb))
		return -1;

	if ((!login->login_complete) && (!login->login_failed))
		FUNC4(&conn->login_work, 0);

	return 0;
}