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
struct sk_buff {scalar_t__ cb; } ;
struct rtl8192_rx_info {int out_pipe; } ;
struct r8192_priv {int /*<<< orphan*/  IrpPendingCount; int /*<<< orphan*/  skb_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct r8192_priv *priv)
{
	struct sk_buff *skb;
	struct rtl8192_rx_info *info;

	while (NULL != (skb = FUNC4(&priv->skb_queue))) {
		info = (struct rtl8192_rx_info *)skb->cb;
		switch (info->out_pipe) {
		/* Nomal packet pipe */
		case 3:
			priv->IrpPendingCount--;
			FUNC3(skb);
			break;

		/* Command packet pipe */
		case 9:
			FUNC0(COMP_RECV, "command in-pipe index(%d)\n",
				 info->out_pipe);

			FUNC2(skb);
			break;

		default: /* should never get here! */
			FUNC0(COMP_ERR, "Unknown in-pipe index(%d)\n",
				 info->out_pipe);
			FUNC1(skb);
			break;
		}
	}
}