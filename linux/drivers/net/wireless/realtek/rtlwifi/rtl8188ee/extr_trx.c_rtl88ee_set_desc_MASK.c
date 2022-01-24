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
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
#define  HW_DESC_OWN 133 
#define  HW_DESC_RXBUFF_ADDR 132 
#define  HW_DESC_RXERO 131 
#define  HW_DESC_RXOWN 130 
#define  HW_DESC_RXPKT_LEN 129 
#define  HW_DESC_TX_NEXTDESC_ADDR 128 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(struct ieee80211_hw *hw, u8 *pdesc8,
		      bool istx, u8 desc_name, u8 *val)
{
	__le32 *pdesc = (__le32 *)pdesc8;

	if (istx == true) {
		switch (desc_name) {
		case HW_DESC_OWN:
			FUNC6(pdesc, 1);
			break;
		case HW_DESC_TX_NEXTDESC_ADDR:
			FUNC5(pdesc, *(u32 *)val);
			break;
		default:
			FUNC0(true, "rtl8188ee: ERR txdesc :%d not processed\n",
				  desc_name);
			break;
		}
	} else {
		switch (desc_name) {
		case HW_DESC_RXOWN:
			FUNC3(pdesc, 1);
			break;
		case HW_DESC_RXBUFF_ADDR:
			FUNC1(pdesc, *(u32 *)val);
			break;
		case HW_DESC_RXPKT_LEN:
			FUNC4(pdesc, *(u32 *)val);
			break;
		case HW_DESC_RXERO:
			FUNC2(pdesc, 1);
			break;
		default:
			FUNC0(true, "rtl8188ee: ERR rxdesc :%d not processed\n",
				  desc_name);
			break;
		}
	}
}