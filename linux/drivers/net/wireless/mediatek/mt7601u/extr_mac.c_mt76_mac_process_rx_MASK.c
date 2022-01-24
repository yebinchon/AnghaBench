#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct mt7601u_rxwi {int rxinfo; int /*<<< orphan*/  rate; int /*<<< orphan*/  ctl; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct mt7601u_dev {int /*<<< orphan*/  con_mon_lock; int /*<<< orphan*/  avg_rssi; TYPE_2__ chandef; } ;
struct ieee80211_rx_status {int* chain_signal; int signal; int /*<<< orphan*/  band; int /*<<< orphan*/  freq; int /*<<< orphan*/  chains; int /*<<< orphan*/  flag; } ;
struct TYPE_3__ {int /*<<< orphan*/  band; int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct ieee80211_rx_status* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  MT_RXINFO_DECRYPT ; 
 int /*<<< orphan*/  MT_RXINFO_PN_LEN ; 
 int /*<<< orphan*/  MT_RXINFO_U2M ; 
 int /*<<< orphan*/  MT_RXWI_CTL_MPDU_LEN ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_ICV_STRIPPED ; 
 int /*<<< orphan*/  RX_FLAG_IV_STRIPPED ; 
 int /*<<< orphan*/  RX_FLAG_MIC_STRIPPED ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_STRIPPED ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mt7601u_dev*,struct mt7601u_rxwi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mt7601u_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7601u_dev*,struct mt7601u_rxwi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_rx_status*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

u32 FUNC13(struct mt7601u_dev *dev, struct sk_buff *skb,
			u8 *data, void *rxi)
{
	struct ieee80211_rx_status *status = FUNC2(skb);
	struct mt7601u_rxwi *rxwi = rxi;
	u32 len, ctl = FUNC6(rxwi->ctl);
	u16 rate = FUNC5(rxwi->rate);
	int rssi;

	len = FUNC1(MT_RXWI_CTL_MPDU_LEN, ctl);
	if (len < 10)
		return 0;

	if (rxwi->rxinfo & FUNC3(MT_RXINFO_DECRYPT)) {
		status->flag |= RX_FLAG_DECRYPTED;
		status->flag |= RX_FLAG_MMIC_STRIPPED;
		status->flag |= RX_FLAG_MIC_STRIPPED;
		status->flag |= RX_FLAG_ICV_STRIPPED;
		status->flag |= RX_FLAG_IV_STRIPPED;
	}
	/* let mac80211 take care of PN validation since apparently
	 * the hardware does not support it
	 */
	if (rxwi->rxinfo & FUNC3(MT_RXINFO_PN_LEN))
		status->flag &= ~RX_FLAG_IV_STRIPPED;

	status->chains = FUNC0(0);
	rssi = FUNC7(dev, rxwi, rate);
	status->chain_signal[0] = status->signal = rssi;
	status->freq = dev->chandef.chan->center_freq;
	status->band = dev->chandef.chan->band;

	FUNC10(status, rate);

	FUNC11(&dev->con_mon_lock);
	if (FUNC8(dev, data))
		FUNC9(dev, rxwi, rate, rssi);
	else if (rxwi->rxinfo & FUNC3(MT_RXINFO_U2M))
		FUNC4(&dev->avg_rssi, -rssi);
	FUNC12(&dev->con_mon_lock);

	return len;
}