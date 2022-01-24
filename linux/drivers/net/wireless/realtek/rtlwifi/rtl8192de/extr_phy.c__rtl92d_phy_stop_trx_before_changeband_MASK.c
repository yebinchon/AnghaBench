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
 int /*<<< orphan*/  BCCKEN ; 
 int /*<<< orphan*/  BDWORD ; 
 int /*<<< orphan*/  BOFDMEN ; 
 int /*<<< orphan*/  MASKBYTE0 ; 
 int /*<<< orphan*/  RFPGA0_RFMOD ; 
 int /*<<< orphan*/  ROFDM0_TRXPATHENABLE ; 
 int /*<<< orphan*/  ROFDM1_TRXPATHENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct ieee80211_hw *hw)
{
	FUNC0(hw, RFPGA0_RFMOD, BCCKEN, 0);
	FUNC0(hw, RFPGA0_RFMOD, BOFDMEN, 0);
	FUNC0(hw, ROFDM0_TRXPATHENABLE, MASKBYTE0, 0x00);
	FUNC0(hw, ROFDM1_TRXPATHENABLE, BDWORD, 0x0);
}