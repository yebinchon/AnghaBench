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
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int MASKDWORD ; 
 int MASKLWORD ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct ieee80211_hw *hw)
{
	/* BB OFDM RX Path_A */
	FUNC0(hw, 0x808, 0xff, 0x11);
	/* BB OFDM TX Path_A */
	FUNC0(hw, 0x80c, MASKLWORD, 0x1111);
	/* BB CCK R/Rx Path_A */
	FUNC0(hw, 0xa04, 0x0c000000, 0x0);
	/* MCS support */
	FUNC0(hw, 0x8bc, 0xc0000060, 0x4);
	/* RF Path_B HSSI OFF */
	FUNC0(hw, 0xe00, 0xf, 0x4);
	/* RF Path_B Power Down */
	FUNC0(hw, 0xe90, MASKDWORD, 0);
	/* ADDA Path_B OFF */
	FUNC0(hw, 0xe60, MASKDWORD, 0);
	FUNC0(hw, 0xe64, MASKDWORD, 0);
}