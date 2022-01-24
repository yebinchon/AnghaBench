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
struct TYPE_3__ {int bwi_active; int /*<<< orphan*/  wt_timeout; int /*<<< orphan*/  bwi_timer; int /*<<< orphan*/  cb_context; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct st_nci_info {TYPE_1__ se_info; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct nci_dev {TYPE_2__* nfc_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ST_NCI_EVT_TRANSMIT_DATA 129 
#define  ST_NCI_EVT_WTX_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct st_nci_info* FUNC4 (struct nci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct nci_dev *ndev,
						   u8 event,
						   struct sk_buff *skb)
{
	int r = 0;
	struct st_nci_info *info = FUNC4(ndev);

	FUNC6("apdu reader gate event: %x\n", event);

	switch (event) {
	case ST_NCI_EVT_TRANSMIT_DATA:
		FUNC0(&info->se_info.bwi_timer);
		info->se_info.bwi_active = false;
		info->se_info.cb(info->se_info.cb_context,
				 skb->data, skb->len, 0);
	break;
	case ST_NCI_EVT_WTX_REQUEST:
		FUNC2(&info->se_info.bwi_timer, jiffies +
			  FUNC3(info->se_info.wt_timeout));
	break;
	default:
		FUNC5(&ndev->nfc_dev->dev, "Unexpected event on apdu reader gate\n");
		return 1;
	}

	FUNC1(skb);
	return r;
}