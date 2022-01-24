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
typedef  int /*<<< orphan*/  u32 ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
#define  HW_DESC_OWN 133 
#define  HW_DESC_RXBUFF_ADDR 132 
#define  HW_DESC_RXERO 131 
#define  HW_DESC_RXOWN 130 
#define  HW_DESC_RXPKT_LEN 129 
#define  HW_DESC_TX_NEXTDESC_ADDR 128 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(struct ieee80211_hw *hw, u8 *pdesc, bool istx,
		      u8 desc_name, u8 *val)
{
	if (istx) {
		switch (desc_name) {
		case HW_DESC_OWN:
			FUNC7();
			FUNC5(pdesc, 1);
			break;
		case HW_DESC_TX_NEXTDESC_ADDR:
			FUNC4(pdesc, *(u32 *) val);
			break;
		default:
			FUNC6(true, "rtl8192se: ERR txdesc :%d not processed\n",
				  desc_name);
			break;
		}
	} else {
		switch (desc_name) {
		case HW_DESC_RXOWN:
			FUNC7();
			FUNC1(pdesc, 1);
			break;
		case HW_DESC_RXBUFF_ADDR:
			FUNC3(pdesc, *(u32 *) val);
			break;
		case HW_DESC_RXPKT_LEN:
			FUNC2(pdesc, *(u32 *) val);
			break;
		case HW_DESC_RXERO:
			FUNC0(pdesc, 1);
			break;
		default:
			FUNC6(true, "rtl8192se: ERR rxdesc :%d not processed\n",
				  desc_name);
			break;
		}
	}
}