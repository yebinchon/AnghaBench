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
struct TYPE_2__ {int /*<<< orphan*/  wt_timeout; int /*<<< orphan*/  atr; } ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct nci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_HCI_APDU_PARAM_ATR ; 
 int /*<<< orphan*/  ST_NCI_APDU_READER_GATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ST_NCI_ESE_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct st_nci_info* FUNC3 (struct nci_dev*) ; 
 int FUNC4 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_dev*) ; 

__attribute__((used)) static void FUNC6(struct nci_dev *ndev)
{
	struct st_nci_info *info = FUNC3(ndev);
	int r;
	struct sk_buff *skb;

	r = FUNC4(ndev, ST_NCI_APDU_READER_GATE,
				NCI_HCI_APDU_PARAM_ATR, &skb);
	if (r < 0)
		return;

	if (skb->len <= ST_NCI_ESE_MAX_LENGTH) {
		FUNC2(info->se_info.atr, skb->data, skb->len);

		info->se_info.wt_timeout =
			FUNC0(FUNC5(ndev));
	}
	FUNC1(skb);
}