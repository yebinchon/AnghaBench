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
struct rtw_tx_pkt_info {int dummy; } ;
typedef  struct rtw_tx_pkt_info u8 ;
struct sk_buff {int dummy; } ;
struct rtw_dev {struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int tx_pkt_desc_sz; } ;
typedef  int /*<<< orphan*/  pkt_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtw_tx_pkt_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,struct rtw_tx_pkt_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_tx_pkt_info*,struct sk_buff*) ; 
 struct rtw_tx_pkt_info* FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC4(struct rtw_dev *rtwdev, struct sk_buff *skb)
{
	struct rtw_tx_pkt_info pkt_info;
	struct rtw_chip_info *chip = rtwdev->chip;
	u8 *pkt_desc;

	FUNC0(&pkt_info, 0, sizeof(pkt_info));
	FUNC1(rtwdev, &pkt_info, skb);
	pkt_desc = FUNC3(skb, chip->tx_pkt_desc_sz);
	FUNC0(pkt_desc, 0, chip->tx_pkt_desc_sz);
	FUNC2(&pkt_info, skb);
}