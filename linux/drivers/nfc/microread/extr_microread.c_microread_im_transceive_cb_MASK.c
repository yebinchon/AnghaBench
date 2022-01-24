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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct microread_info {int async_cb_type; int /*<<< orphan*/  async_cb_context; int /*<<< orphan*/  (* async_cb ) (int /*<<< orphan*/ ,struct sk_buff*,int) ;} ;

/* Variables and functions */
 int EPROTO ; 
#define  MICROREAD_CB_TYPE_READER_ALL 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(void *context, struct sk_buff *skb,
				       int err)
{
	struct microread_info *info = context;

	switch (info->async_cb_type) {
	case MICROREAD_CB_TYPE_READER_ALL:
		if (err == 0) {
			if (skb->len == 0) {
				err = -EPROTO;
				FUNC0(skb);
				info->async_cb(info->async_cb_context, NULL,
					       -EPROTO);
				return;
			}

			if (skb->data[skb->len - 1] != 0) {
				err = FUNC1(
						       skb->data[skb->len - 1]);
				FUNC0(skb);
				info->async_cb(info->async_cb_context, NULL,
					       err);
				return;
			}

			FUNC2(skb, skb->len - 1);	/* RF Error ind. */
		}
		info->async_cb(info->async_cb_context, skb, err);
		break;
	default:
		if (err == 0)
			FUNC0(skb);
		break;
	}
}