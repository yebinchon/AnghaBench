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
typedef  int u8 ;
struct TYPE_4__ {int se_active; int /*<<< orphan*/  se_active_timer; int /*<<< orphan*/  req_completion; } ;
struct st21nfca_hci_info {TYPE_2__ se_info; } ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {TYPE_1__* ndev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ST21NFCA_EVT_HOT_PLUG 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ST21NFCA_SE_TO_PIPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct st21nfca_hci_info* FUNC7 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static int FUNC9(struct nfc_hci_dev *hdev, u8 event,
					struct sk_buff *skb)
{
	struct st21nfca_hci_info *info = FUNC7(hdev);

	FUNC8("admin event: %x\n", event);

	switch (event) {
	case ST21NFCA_EVT_HOT_PLUG:
		if (info->se_info.se_active) {
			if (!FUNC0(skb)) {
				FUNC2(&info->se_info.se_active_timer);
				info->se_info.se_active = false;
				FUNC1(&info->se_info.req_completion);
			} else {
				FUNC4(&info->se_info.se_active_timer,
					jiffies +
					FUNC5(ST21NFCA_SE_TO_PIPES));
			}
		}
	break;
	default:
		FUNC6(&hdev->ndev->dev, "Unexpected event on admin gate\n");
	}
	FUNC3(skb);
	return 0;
}