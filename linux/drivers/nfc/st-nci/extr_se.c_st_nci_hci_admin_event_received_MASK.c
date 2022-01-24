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
struct st_nci_info {TYPE_2__ se_info; } ;
struct sk_buff {int dummy; } ;
struct nci_dev {TYPE_1__* nfc_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ST_NCI_EVT_HOT_PLUG 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ST_NCI_SE_TO_PIPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct st_nci_info* FUNC5 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC7(struct nci_dev *ndev,
					      u8 event, struct sk_buff *skb)
{
	struct st_nci_info *info = FUNC5(ndev);

	switch (event) {
	case ST_NCI_EVT_HOT_PLUG:
		if (info->se_info.se_active) {
			if (!FUNC0(skb)) {
				FUNC2(&info->se_info.se_active_timer);
				info->se_info.se_active = false;
				FUNC1(&info->se_info.req_completion);
			} else {
				FUNC3(&info->se_info.se_active_timer,
				      jiffies +
				      FUNC4(ST_NCI_SE_TO_PIPES));
			}
		}
	break;
	default:
		FUNC6(&ndev->nfc_dev->dev, "Unexpected event on admin gate\n");
	}
}