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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ DESC92C_RATEMCS10 ; 
 scalar_t__ DESC92C_RATEMCS11 ; 
 scalar_t__ DESC92C_RATEMCS12 ; 
 scalar_t__ DESC92C_RATEMCS13 ; 
 scalar_t__ DESC92C_RATEMCS14 ; 
 scalar_t__ DESC92C_RATEMCS15 ; 
 scalar_t__ DESC92C_RATEMCS8 ; 
 scalar_t__ DESC92C_RATEMCS9 ; 
 scalar_t__ REG_DARFRC ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,scalar_t__,int) ; 

void FUNC2(struct ieee80211_hw *hw,
				    u8 rate, bool collision_state)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);

	if (rate >= DESC92C_RATEMCS8  && rate <= DESC92C_RATEMCS12) {
		if (collision_state == 1) {
			if (rate == DESC92C_RATEMCS12) {
				FUNC1(rtlpriv, REG_DARFRC, 0x0);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x07060501);
			} else if (rate == DESC92C_RATEMCS11) {
				FUNC1(rtlpriv, REG_DARFRC, 0x0);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x07070605);
			} else if (rate == DESC92C_RATEMCS10) {
				FUNC1(rtlpriv, REG_DARFRC, 0x0);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x08080706);
			} else if (rate == DESC92C_RATEMCS9) {
				FUNC1(rtlpriv, REG_DARFRC, 0x0);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x08080707);
			} else {
				FUNC1(rtlpriv, REG_DARFRC, 0x0);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x09090808);
			}
		} else {   /* collision_state == 0 */
			if (rate == DESC92C_RATEMCS12) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x05010000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x09080706);
			} else if (rate == DESC92C_RATEMCS11) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x06050000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x09080807);
			} else if (rate == DESC92C_RATEMCS10) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x07060000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x0a090908);
			} else if (rate == DESC92C_RATEMCS9) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x07070000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x0a090808);
			} else {
				FUNC1(rtlpriv, REG_DARFRC,
						0x08080000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x0b0a0909);
			}
		}
	} else {  /* MCS13~MCS15,  1SS, G-mode */
		if (collision_state == 1) {
			if (rate == DESC92C_RATEMCS15) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x00000000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x05040302);
			} else if (rate == DESC92C_RATEMCS14) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x00000000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x06050302);
			} else if (rate == DESC92C_RATEMCS13) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x00000000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x07060502);
			} else {
				FUNC1(rtlpriv, REG_DARFRC,
						0x00000000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x06050402);
			}
		} else{   /* collision_state == 0 */
			if (rate == DESC92C_RATEMCS15) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x03020000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x07060504);
			} else if (rate == DESC92C_RATEMCS14) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x03020000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x08070605);
			} else if (rate == DESC92C_RATEMCS13) {
				FUNC1(rtlpriv, REG_DARFRC,
						0x05020000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x09080706);
			} else {
				FUNC1(rtlpriv, REG_DARFRC,
						0x04020000);
				FUNC1(rtlpriv, REG_DARFRC + 4,
						0x08070605);
			}
		}
	}
}