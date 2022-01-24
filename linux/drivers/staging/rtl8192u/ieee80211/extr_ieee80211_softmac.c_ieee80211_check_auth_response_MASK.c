#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_auth_rs_err; int /*<<< orphan*/  rx_auth_rs_ok; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct ieee80211_device {int bHalfWirelessN24GMode; TYPE_3__ softmac_stats; int /*<<< orphan*/  dev; TYPE_2__ current_network; int /*<<< orphan*/  (* SetWirelessMode ) (int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  (* GetNmodeSupportBySecCfg ) (int /*<<< orphan*/ ) ;TYPE_1__* pHTInfo; int /*<<< orphan*/  state; scalar_t__ open_wep; } ;
struct TYPE_4__ {int IOTAction; } ;

/* Variables and functions */
 int HT_IOT_ACT_PURE_N_MODE ; 
 int /*<<< orphan*/  IEEE80211_ASSOCIATING_AUTHENTICATED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE_G ; 
 scalar_t__ IEEE_N_24G ; 
 scalar_t__ FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_device *ieee,
					  struct sk_buff *skb)
{
	/* default support N mode, disable halfNmode */
	bool bSupportNmode = true, bHalfSupportNmode = false;
	u16 errcode;
	u8 *challenge;
	int chlen = 0;
	u32 iotAction;

	errcode = FUNC2(skb, &challenge, &chlen);
	if (!errcode) {
		if (ieee->open_wep || !challenge) {
			ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
			ieee->softmac_stats.rx_auth_rs_ok++;
			iotAction = ieee->pHTInfo->IOTAction;
			if (!(iotAction & HT_IOT_ACT_PURE_N_MODE)) {
				if (!ieee->GetNmodeSupportBySecCfg(ieee->dev)) {
					/* WEP or TKIP encryption */
					if (FUNC1(ieee)) {
						bSupportNmode = true;
						bHalfSupportNmode = true;
					} else {
						bSupportNmode = false;
						bHalfSupportNmode = false;
					}
					FUNC6(ieee->dev, "SEC(%d, %d)\n",
							bSupportNmode,
							bHalfSupportNmode);
				}
			}
			/* Dummy wirless mode setting- avoid encryption issue */
			if (bSupportNmode) {
				/* N mode setting */
				ieee->SetWirelessMode(ieee->dev,
						ieee->current_network.mode);
			} else {
				/* b/g mode setting - TODO */
				ieee->SetWirelessMode(ieee->dev, IEEE_G);
			}

			if (ieee->current_network.mode == IEEE_N_24G &&
					bHalfSupportNmode) {
				FUNC6(ieee->dev, "enter half N mode\n");
				ieee->bHalfWirelessN24GMode = true;
			} else {
				ieee->bHalfWirelessN24GMode = false;
			}
			FUNC4(ieee);
		} else {
			FUNC5(ieee, challenge, chlen);
		}
	} else {
		ieee->softmac_stats.rx_auth_rs_err++;
		FUNC0("Auth response status code 0x%x", errcode);
		FUNC3(ieee);
	}
}