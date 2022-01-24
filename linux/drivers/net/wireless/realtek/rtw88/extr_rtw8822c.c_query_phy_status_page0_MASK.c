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
struct rtw_dm_info {scalar_t__ cck_gi_l_bnd; scalar_t__ cck_gi_u_bnd; } ;
struct rtw_dev {struct rtw_dm_info dm_info; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 size_t RF_PATH_A ; 
 size_t RF_PATH_B ; 
 int /*<<< orphan*/  RTW_CHANNEL_WIDTH_20 ; 
 int RTW_RF_PATH_MAX ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int) ; 

__attribute__((used)) static void FUNC6(struct rtw_dev *rtwdev, u8 *phy_status,
				   struct rtw_rx_pkt_stat *pkt_stat)
{
	struct rtw_dm_info *dm_info = &rtwdev->dm_info;
	u8 l_bnd, u_bnd;
	u8 gain_a, gain_b;
	s8 rx_power[RTW_RF_PATH_MAX];
	s8 min_rx_power = -120;

	rx_power[RF_PATH_A] = FUNC2(phy_status);
	rx_power[RF_PATH_B] = FUNC3(phy_status);
	l_bnd = dm_info->cck_gi_l_bnd;
	u_bnd = dm_info->cck_gi_u_bnd;
	gain_a = FUNC0(phy_status);
	gain_b = FUNC1(phy_status);
	if (gain_a < l_bnd)
		rx_power[RF_PATH_A] += (l_bnd - gain_a) << 1;
	else if (gain_a > u_bnd)
		rx_power[RF_PATH_A] -= (gain_a - u_bnd) << 1;
	if (gain_b < l_bnd)
		rx_power[RF_PATH_B] += (l_bnd - gain_b) << 1;
	else if (gain_b > u_bnd)
		rx_power[RF_PATH_B] -= (gain_b - u_bnd) << 1;

	rx_power[RF_PATH_A] -= 110;
	rx_power[RF_PATH_B] -= 110;

	pkt_stat->rx_power[RF_PATH_A] = rx_power[RF_PATH_A];
	pkt_stat->rx_power[RF_PATH_B] = rx_power[RF_PATH_B];

	pkt_stat->rssi = FUNC5(pkt_stat->rx_power, 1);
	pkt_stat->bw = RTW_CHANNEL_WIDTH_20;
	pkt_stat->signal_power = FUNC4(pkt_stat->rx_power[RF_PATH_A],
				     min_rx_power);
}