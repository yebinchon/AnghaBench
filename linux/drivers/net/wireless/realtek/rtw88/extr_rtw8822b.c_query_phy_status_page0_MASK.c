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
typedef  scalar_t__ u8 ;
struct rtw_rx_pkt_stat {scalar_t__* rx_power; int /*<<< orphan*/  signal_power; int /*<<< orphan*/  bw; int /*<<< orphan*/  rssi; } ;
struct rtw_dev {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 size_t RF_PATH_A ; 
 int /*<<< orphan*/  RTW_CHANNEL_WIDTH_20 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 

__attribute__((used)) static void FUNC3(struct rtw_dev *rtwdev, u8 *phy_status,
				   struct rtw_rx_pkt_stat *pkt_stat)
{
	s8 min_rx_power = -120;
	u8 pwdb = FUNC0(phy_status);

	/* 8822B uses only 1 antenna to RX CCK rates */
	pkt_stat->rx_power[RF_PATH_A] = pwdb - 110;
	pkt_stat->rssi = FUNC2(pkt_stat->rx_power, 1);
	pkt_stat->bw = RTW_CHANNEL_WIDTH_20;
	pkt_stat->signal_power = FUNC1(pkt_stat->rx_power[RF_PATH_A],
				     min_rx_power);
}