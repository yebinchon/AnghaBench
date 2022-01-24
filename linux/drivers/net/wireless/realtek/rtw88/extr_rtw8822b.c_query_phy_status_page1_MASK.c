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
struct rtw_rx_pkt_stat {scalar_t__ rate; int bw; scalar_t__* rx_power; int /*<<< orphan*/  signal_power; int /*<<< orphan*/  rssi; } ;
struct rtw_dev {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 scalar_t__ DESC_RATE11M ; 
 scalar_t__ DESC_RATEMCS0 ; 
 int FUNC0 (int*) ; 
 int FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int*) ; 
 scalar_t__ FUNC3 (int*) ; 
 int FUNC4 (int*) ; 
 size_t RF_PATH_A ; 
 size_t RF_PATH_B ; 
 int RTW_CHANNEL_WIDTH_20 ; 
 int RTW_CHANNEL_WIDTH_40 ; 
 int RTW_CHANNEL_WIDTH_80 ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 

__attribute__((used)) static void FUNC7(struct rtw_dev *rtwdev, u8 *phy_status,
				   struct rtw_rx_pkt_stat *pkt_stat)
{
	u8 rxsc, bw;
	s8 min_rx_power = -120;

	if (pkt_stat->rate > DESC_RATE11M && pkt_stat->rate < DESC_RATEMCS0)
		rxsc = FUNC1(phy_status);
	else
		rxsc = FUNC0(phy_status);

	if (rxsc >= 1 && rxsc <= 8)
		bw = RTW_CHANNEL_WIDTH_20;
	else if (rxsc >= 9 && rxsc <= 12)
		bw = RTW_CHANNEL_WIDTH_40;
	else if (rxsc >= 13)
		bw = RTW_CHANNEL_WIDTH_80;
	else
		bw = FUNC4(phy_status);

	pkt_stat->rx_power[RF_PATH_A] = FUNC2(phy_status) - 110;
	pkt_stat->rx_power[RF_PATH_B] = FUNC3(phy_status) - 110;
	pkt_stat->rssi = FUNC6(pkt_stat->rx_power, 2);
	pkt_stat->bw = bw;
	pkt_stat->signal_power = FUNC5(pkt_stat->rx_power[RF_PATH_A],
				      pkt_stat->rx_power[RF_PATH_B],
				      min_rx_power);
}