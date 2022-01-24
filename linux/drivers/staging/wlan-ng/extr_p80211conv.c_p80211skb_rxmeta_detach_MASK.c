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
struct sk_buff {int /*<<< orphan*/  cb; } ;
struct p80211_rxmeta {int dummy; } ;
struct p80211_frmmeta {struct p80211_rxmeta* rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p80211_rxmeta*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct p80211_frmmeta* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct sk_buff *skb)
{
	struct p80211_rxmeta *rxmeta;
	struct p80211_frmmeta *frmmeta;

	/* Sanity checks */
	if (!skb) {	/* bad skb */
		FUNC3("Called w/ null skb.\n");
		return;
	}
	frmmeta = FUNC2(skb);
	if (!frmmeta) {	/* no magic */
		FUNC3("Called w/ bad frmmeta magic.\n");
		return;
	}
	rxmeta = frmmeta->rx;
	if (!rxmeta) {	/* bad meta ptr */
		FUNC3("Called w/ bad rxmeta ptr.\n");
		return;
	}

	/* Free rxmeta */
	FUNC0(rxmeta);

	/* Clear skb->cb */
	FUNC1(skb->cb, 0, sizeof(skb->cb));
}