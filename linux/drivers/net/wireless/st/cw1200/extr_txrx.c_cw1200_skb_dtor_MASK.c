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
struct sk_buff {int dummy; } ;
struct cw1200_txpriv {scalar_t__ rate_id; int /*<<< orphan*/  tid; int /*<<< orphan*/  raw_link_id; int /*<<< orphan*/  offset; } ;
struct cw1200_common {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 scalar_t__ CW1200_INVALID_RATE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct cw1200_common*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*,scalar_t__) ; 

void FUNC4(struct cw1200_common *priv,
		     struct sk_buff *skb,
		     const struct cw1200_txpriv *txpriv)
{
	FUNC2(skb, txpriv->offset);
	if (txpriv->rate_id != CW1200_INVALID_RATE_ID) {
		FUNC0(priv, skb,
					  txpriv->raw_link_id, txpriv->tid);
		FUNC3(priv, txpriv->rate_id);
	}
	FUNC1(priv->hw, skb);
}