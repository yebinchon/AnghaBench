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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
#define  HW_DESC_OWN 131 
#define  HW_DESC_RXBUFF_ADDR 130 
#define  HW_DESC_RXPKT_LEN 129 
#define  HW_DESC_TXBUFF_ADDR 128 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

u64 FUNC6(struct ieee80211_hw *hw,
		     u8 *desc, bool istx, u8 desc_name)
{
	u32 ret = 0;

	if (istx) {
		switch (desc_name) {
		case HW_DESC_OWN:
			ret = FUNC3(desc);
			break;
		case HW_DESC_TXBUFF_ADDR:
			ret = FUNC4(desc);
			break;
		default:
			FUNC5(true, "rtl8192se: ERR txdesc :%d not processed\n",
				  desc_name);
			break;
		}
	} else {
		switch (desc_name) {
		case HW_DESC_OWN:
			ret = FUNC1(desc);
			break;
		case HW_DESC_RXPKT_LEN:
			ret = FUNC2(desc);
			break;
		case HW_DESC_RXBUFF_ADDR:
			ret = FUNC0(desc);
			break;
		default:
			FUNC5(true, "rtl8192se: ERR rxdesc :%d not processed\n",
				  desc_name);
			break;
		}
	}
	return ret;
}