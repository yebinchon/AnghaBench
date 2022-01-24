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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nfc_mei_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sk_buff*) ; 
 int FUNC1 (struct nfc_mei_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *phy_id, struct sk_buff *skb)
{
	struct nfc_mei_phy *phy = phy_id;
	int r;

	FUNC0("mei frame sent", skb);

	r = FUNC1(phy, skb->data, skb->len);
	if (r > 0)
		r = 0;

	return r;
}