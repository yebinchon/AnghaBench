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
struct rtl_hal {scalar_t__ hw_type; int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ HARDWARE_TYPE_RTL8812AE ; 
 int HT_CHANNEL_WIDTH_20 ; 
 int HT_CHANNEL_WIDTH_20_40 ; 
 int HT_CHANNEL_WIDTH_80 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADC_BUF_CLK ; 
 int /*<<< orphan*/  RRFMOD ; 
 struct rtl_hal* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
			      enum ht_channel_width band_width, u8 channel)
{
	struct rtl_hal *rtlhal = FUNC2(FUNC3(hw));

	/*C cut Item12 ADC FIFO CLOCK*/
	if (FUNC1(rtlhal->version)) {
		if (band_width == HT_CHANNEL_WIDTH_20_40 && channel == 11)
			FUNC4(hw, RRFMOD, 0xC00, 0x3);
			/* 0x8AC[11:10] = 2'b11*/
		else
			FUNC4(hw, RRFMOD, 0xC00, 0x2);
			/* 0x8AC[11:10] = 2'b10*/

		/* <20120914, Kordan> A workarould to resolve
		 * 2480Mhz spur by setting ADC clock as 160M. (Asked by Binson)
		 */
		if (band_width == HT_CHANNEL_WIDTH_20 &&
		    (channel == 13 || channel == 14)) {
			FUNC4(hw, RRFMOD, 0x300, 0x3);
			/*0x8AC[9:8] = 2'b11*/
			FUNC4(hw, RADC_BUF_CLK, FUNC0(30), 1);
			/* 0x8C4[30] = 1*/
		} else if (band_width == HT_CHANNEL_WIDTH_20_40 &&
			   channel == 11) {
			FUNC4(hw, RADC_BUF_CLK, FUNC0(30), 1);
			/*0x8C4[30] = 1*/
		} else if (band_width != HT_CHANNEL_WIDTH_80) {
			FUNC4(hw, RRFMOD, 0x300, 0x2);
			/*0x8AC[9:8] = 2'b10*/
			FUNC4(hw, RADC_BUF_CLK, FUNC0(30), 0);
			/*0x8C4[30] = 0*/
		}
	} else if (rtlhal->hw_type == HARDWARE_TYPE_RTL8812AE) {
		/* <20120914, Kordan> A workarould to resolve
		 * 2480Mhz spur by setting ADC clock as 160M.
		 */
		if (band_width == HT_CHANNEL_WIDTH_20 &&
		    (channel == 13 || channel == 14))
			FUNC4(hw, RRFMOD, 0x300, 0x3);
			/*0x8AC[9:8] = 11*/
		else if (channel  <= 14) /*2.4G only*/
			FUNC4(hw, RRFMOD, 0x300, 0x2);
			/*0x8AC[9:8] = 10*/
	}
}