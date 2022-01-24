#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int rcr; } ;
struct rtw_dev {int /*<<< orphan*/  mutex; TYPE_1__ hal; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;

/* Variables and functions */
 int BIT_AAP ; 
 int BIT_AB ; 
 int BIT_ACRC32 ; 
 int BIT_AM ; 
 int BIT_CBSSID_BCN ; 
 int BIT_CBSSID_DATA ; 
 unsigned int FIF_ALLMULTI ; 
 unsigned int FIF_BCN_PRBRESP_PROMISC ; 
 unsigned int FIF_FCSFAIL ; 
 unsigned int FIF_OTHER_BSS ; 
 int /*<<< orphan*/  REG_RCR ; 
 int /*<<< orphan*/  RTW_DBG_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtw_dev*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ieee80211_hw *hw,
				     unsigned int changed_flags,
				     unsigned int *new_flags,
				     u64 multicast)
{
	struct rtw_dev *rtwdev = hw->priv;

	*new_flags &= FIF_ALLMULTI | FIF_OTHER_BSS | FIF_FCSFAIL |
		      FIF_BCN_PRBRESP_PROMISC;

	FUNC0(&rtwdev->mutex);

	if (changed_flags & FIF_ALLMULTI) {
		if (*new_flags & FIF_ALLMULTI)
			rtwdev->hal.rcr |= BIT_AM | BIT_AB;
		else
			rtwdev->hal.rcr &= ~(BIT_AM | BIT_AB);
	}
	if (changed_flags & FIF_FCSFAIL) {
		if (*new_flags & FIF_FCSFAIL)
			rtwdev->hal.rcr |= BIT_ACRC32;
		else
			rtwdev->hal.rcr &= ~(BIT_ACRC32);
	}
	if (changed_flags & FIF_OTHER_BSS) {
		if (*new_flags & FIF_OTHER_BSS)
			rtwdev->hal.rcr |= BIT_AAP;
		else
			rtwdev->hal.rcr &= ~(BIT_AAP);
	}
	if (changed_flags & FIF_BCN_PRBRESP_PROMISC) {
		if (*new_flags & FIF_BCN_PRBRESP_PROMISC)
			rtwdev->hal.rcr &= ~(BIT_CBSSID_BCN | BIT_CBSSID_DATA);
		else
			rtwdev->hal.rcr |= BIT_CBSSID_BCN;
	}

	FUNC2(rtwdev, RTW_DBG_RX,
		"config rx filter, changed=0x%08x, new=0x%08x, rcr=0x%08x\n",
		changed_flags, *new_flags, rtwdev->hal.rcr);

	FUNC3(rtwdev, REG_RCR, rtwdev->hal.rcr);

	FUNC1(&rtwdev->mutex);
}