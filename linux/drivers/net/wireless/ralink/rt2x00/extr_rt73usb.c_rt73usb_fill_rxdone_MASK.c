#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct skb_frame_desc {scalar_t__ desc; int /*<<< orphan*/  desc_len; } ;
struct rxdone_entry_desc {scalar_t__ cipher; scalar_t__ cipher_status; void* size; int /*<<< orphan*/  dev_flags; int /*<<< orphan*/  rssi; void* signal; int /*<<< orphan*/  flags; void* icv; void** iv; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_2__* skb; TYPE_1__* queue; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_6__ {scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  desc_size; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 scalar_t__ CIPHER_NONE ; 
 int /*<<< orphan*/  RXDONE_CRYPTO_ICV ; 
 int /*<<< orphan*/  RXDONE_CRYPTO_IV ; 
 int /*<<< orphan*/  RXDONE_MY_BSS ; 
 int /*<<< orphan*/  RXDONE_SIGNAL_BITRATE ; 
 int /*<<< orphan*/  RXDONE_SIGNAL_PLCP ; 
 int /*<<< orphan*/  RXD_W0_CIPHER_ALG ; 
 int /*<<< orphan*/  RXD_W0_CIPHER_ERROR ; 
 int /*<<< orphan*/  RXD_W0_CRC_ERROR ; 
 int /*<<< orphan*/  RXD_W0_DATABYTE_COUNT ; 
 int /*<<< orphan*/  RXD_W0_MY_BSS ; 
 int /*<<< orphan*/  RXD_W0_OFDM ; 
 int /*<<< orphan*/  RXD_W1_SIGNAL ; 
 scalar_t__ RX_CRYPTO_FAIL_MIC ; 
 scalar_t__ RX_CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_FAILED_FCS_CRC ; 
 int /*<<< orphan*/  RX_FLAG_IV_STRIPPED ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_ERROR ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_STRIPPED ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct skb_frame_desc* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,void*) ; 

__attribute__((used)) static void FUNC8(struct queue_entry *entry,
				struct rxdone_entry_desc *rxdesc)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct skb_frame_desc *skbdesc = FUNC1(entry->skb);
	__le32 *rxd = (__le32 *)entry->skb->data;
	u32 word0;
	u32 word1;

	/*
	 * Copy descriptor to the skbdesc->desc buffer, making it safe from moving of
	 * frame data in rt2x00usb.
	 */
	FUNC2(skbdesc->desc, rxd, skbdesc->desc_len);
	rxd = (__le32 *)skbdesc->desc;

	/*
	 * It is now safe to read the descriptor on all architectures.
	 */
	word0 = FUNC3(rxd, 0);
	word1 = FUNC3(rxd, 1);

	if (FUNC4(word0, RXD_W0_CRC_ERROR))
		rxdesc->flags |= RX_FLAG_FAILED_FCS_CRC;

	rxdesc->cipher = FUNC4(word0, RXD_W0_CIPHER_ALG);
	rxdesc->cipher_status = FUNC4(word0, RXD_W0_CIPHER_ERROR);

	if (rxdesc->cipher != CIPHER_NONE) {
		rxdesc->iv[0] = FUNC0(rxd, 2);
		rxdesc->iv[1] = FUNC0(rxd, 3);
		rxdesc->dev_flags |= RXDONE_CRYPTO_IV;

		rxdesc->icv = FUNC0(rxd, 4);
		rxdesc->dev_flags |= RXDONE_CRYPTO_ICV;

		/*
		 * Hardware has stripped IV/EIV data from 802.11 frame during
		 * decryption. It has provided the data separately but rt2x00lib
		 * should decide if it should be reinserted.
		 */
		rxdesc->flags |= RX_FLAG_IV_STRIPPED;

		/*
		 * The hardware has already checked the Michael Mic and has
		 * stripped it from the frame. Signal this to mac80211.
		 */
		rxdesc->flags |= RX_FLAG_MMIC_STRIPPED;

		if (rxdesc->cipher_status == RX_CRYPTO_SUCCESS)
			rxdesc->flags |= RX_FLAG_DECRYPTED;
		else if (rxdesc->cipher_status == RX_CRYPTO_FAIL_MIC)
			rxdesc->flags |= RX_FLAG_MMIC_ERROR;
	}

	/*
	 * Obtain the status about this packet.
	 * When frame was received with an OFDM bitrate,
	 * the signal is the PLCP value. If it was received with
	 * a CCK bitrate the signal is the rate in 100kbit/s.
	 */
	rxdesc->signal = FUNC4(word1, RXD_W1_SIGNAL);
	rxdesc->rssi = FUNC5(rt2x00dev, word1);
	rxdesc->size = FUNC4(word0, RXD_W0_DATABYTE_COUNT);

	if (FUNC4(word0, RXD_W0_OFDM))
		rxdesc->dev_flags |= RXDONE_SIGNAL_PLCP;
	else
		rxdesc->dev_flags |= RXDONE_SIGNAL_BITRATE;
	if (FUNC4(word0, RXD_W0_MY_BSS))
		rxdesc->dev_flags |= RXDONE_MY_BSS;

	/*
	 * Set skb pointers, and update frame information.
	 */
	FUNC6(entry->skb, entry->queue->desc_size);
	FUNC7(entry->skb, rxdesc->size);
}