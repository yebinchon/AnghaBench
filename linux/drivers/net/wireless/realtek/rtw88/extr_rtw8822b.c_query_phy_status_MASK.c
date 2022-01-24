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
typedef  int u8 ;
struct rtw_rx_pkt_stat {int dummy; } ;
struct rtw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtw_dev*,int*,struct rtw_rx_pkt_stat*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtw_dev*,int*,struct rtw_rx_pkt_stat*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev, u8 *phy_status,
			     struct rtw_rx_pkt_stat *pkt_stat)
{
	u8 page;

	page = *phy_status & 0xf;

	switch (page) {
	case 0:
		FUNC0(rtwdev, phy_status, pkt_stat);
		break;
	case 1:
		FUNC1(rtwdev, phy_status, pkt_stat);
		break;
	default:
		FUNC2(rtwdev, "unused phy status page (%d)\n", page);
		return;
	}
}