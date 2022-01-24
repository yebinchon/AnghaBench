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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int signal; int service; int length_low; int length_high; int ifs; } ;
struct TYPE_6__ {TYPE_2__ plcp; } ;
struct txentry_desc {scalar_t__ rate_mode; int length; int /*<<< orphan*/  flags; TYPE_3__ u; } ;
struct skb_frame_desc {int skb_dma; int /*<<< orphan*/  desc_len; int /*<<< orphan*/ * desc; } ;
struct queue_entry_priv_mmio {int /*<<< orphan*/ * desc; } ;
struct queue_entry {TYPE_1__* queue; struct queue_entry_priv_mmio* priv_data; int /*<<< orphan*/  skb; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int aifs; int cw_min; int cw_max; } ;

/* Variables and functions */
 int CIPHER_NONE ; 
 int /*<<< orphan*/  ENTRY_TXD_ACK ; 
 int /*<<< orphan*/  ENTRY_TXD_MORE_FRAG ; 
 int /*<<< orphan*/  ENTRY_TXD_REQ_TIMESTAMP ; 
 int /*<<< orphan*/  ENTRY_TXD_RETRY_MODE ; 
 int /*<<< orphan*/  ENTRY_TXD_RTS_FRAME ; 
 int IEEE80211_HEADER ; 
 scalar_t__ RATE_MODE_OFDM ; 
 int /*<<< orphan*/  TXD_DESC_SIZE ; 
 int /*<<< orphan*/  TXD_W0_ACK ; 
 int /*<<< orphan*/  TXD_W0_CIPHER_ALG ; 
 int /*<<< orphan*/  TXD_W0_CIPHER_OWNER ; 
 int /*<<< orphan*/  TXD_W0_DATABYTE_COUNT ; 
 int /*<<< orphan*/  TXD_W0_IFS ; 
 int /*<<< orphan*/  TXD_W0_MORE_FRAG ; 
 int /*<<< orphan*/  TXD_W0_OFDM ; 
 int /*<<< orphan*/  TXD_W0_OWNER_NIC ; 
 int /*<<< orphan*/  TXD_W0_RETRY_MODE ; 
 int /*<<< orphan*/  TXD_W0_TIMESTAMP ; 
 int /*<<< orphan*/  TXD_W0_VALID ; 
 int /*<<< orphan*/  TXD_W10_RTS ; 
 int /*<<< orphan*/  TXD_W1_BUFFER_ADDRESS ; 
 int /*<<< orphan*/  TXD_W2_AIFS ; 
 int /*<<< orphan*/  TXD_W2_CWMAX ; 
 int /*<<< orphan*/  TXD_W2_CWMIN ; 
 int /*<<< orphan*/  TXD_W2_IV_OFFSET ; 
 int /*<<< orphan*/  TXD_W3_PLCP_LENGTH_HIGH ; 
 int /*<<< orphan*/  TXD_W3_PLCP_LENGTH_LOW ; 
 int /*<<< orphan*/  TXD_W3_PLCP_SERVICE ; 
 int /*<<< orphan*/  TXD_W3_PLCP_SIGNAL ; 
 struct skb_frame_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct queue_entry *entry,
				    struct txentry_desc *txdesc)
{
	struct skb_frame_desc *skbdesc = FUNC0(entry->skb);
	struct queue_entry_priv_mmio *entry_priv = entry->priv_data;
	__le32 *txd = entry_priv->desc;
	u32 word;

	/*
	 * Start writing the descriptor words.
	 */
	word = FUNC1(txd, 1);
	FUNC3(&word, TXD_W1_BUFFER_ADDRESS, skbdesc->skb_dma);
	FUNC2(txd, 1, word);

	word = FUNC1(txd, 2);
	FUNC3(&word, TXD_W2_IV_OFFSET, IEEE80211_HEADER);
	FUNC3(&word, TXD_W2_AIFS, entry->queue->aifs);
	FUNC3(&word, TXD_W2_CWMIN, entry->queue->cw_min);
	FUNC3(&word, TXD_W2_CWMAX, entry->queue->cw_max);
	FUNC2(txd, 2, word);

	word = FUNC1(txd, 3);
	FUNC3(&word, TXD_W3_PLCP_SIGNAL, txdesc->u.plcp.signal);
	FUNC3(&word, TXD_W3_PLCP_SERVICE, txdesc->u.plcp.service);
	FUNC3(&word, TXD_W3_PLCP_LENGTH_LOW,
			   txdesc->u.plcp.length_low);
	FUNC3(&word, TXD_W3_PLCP_LENGTH_HIGH,
			   txdesc->u.plcp.length_high);
	FUNC2(txd, 3, word);

	word = FUNC1(txd, 10);
	FUNC3(&word, TXD_W10_RTS,
			   FUNC4(ENTRY_TXD_RTS_FRAME, &txdesc->flags));
	FUNC2(txd, 10, word);

	/*
	 * Writing TXD word 0 must the last to prevent a race condition with
	 * the device, whereby the device may take hold of the TXD before we
	 * finished updating it.
	 */
	word = FUNC1(txd, 0);
	FUNC3(&word, TXD_W0_OWNER_NIC, 1);
	FUNC3(&word, TXD_W0_VALID, 1);
	FUNC3(&word, TXD_W0_MORE_FRAG,
			   FUNC4(ENTRY_TXD_MORE_FRAG, &txdesc->flags));
	FUNC3(&word, TXD_W0_ACK,
			   FUNC4(ENTRY_TXD_ACK, &txdesc->flags));
	FUNC3(&word, TXD_W0_TIMESTAMP,
			   FUNC4(ENTRY_TXD_REQ_TIMESTAMP, &txdesc->flags));
	FUNC3(&word, TXD_W0_OFDM,
			   (txdesc->rate_mode == RATE_MODE_OFDM));
	FUNC3(&word, TXD_W0_CIPHER_OWNER, 1);
	FUNC3(&word, TXD_W0_IFS, txdesc->u.plcp.ifs);
	FUNC3(&word, TXD_W0_RETRY_MODE,
			   FUNC4(ENTRY_TXD_RETRY_MODE, &txdesc->flags));
	FUNC3(&word, TXD_W0_DATABYTE_COUNT, txdesc->length);
	FUNC3(&word, TXD_W0_CIPHER_ALG, CIPHER_NONE);
	FUNC2(txd, 0, word);

	/*
	 * Register descriptor details in skb frame descriptor.
	 */
	skbdesc->desc = txd;
	skbdesc->desc_len = TXD_DESC_SIZE;
}