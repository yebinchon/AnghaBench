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
struct sk_buff {scalar_t__ cb; int /*<<< orphan*/ * data; } ;
struct rtw_rx_pkt_stat {int drv_info_sz; int shift; int pkt_len; int /*<<< orphan*/  vif; scalar_t__ is_c2h; } ;
struct TYPE_4__ {int wp; int len; int rp; } ;
struct rtw_pci_rx_ring {TYPE_2__ r; struct sk_buff** buf; } ;
struct rtw_pci {struct rtw_pci_rx_ring* rx_rings; } ;
struct rtw_dev {int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int rx_pkt_desc_sz; int rx_buf_desc_sz; TYPE_1__* ops; } ;
struct ieee80211_rx_status {int dummy; } ;
typedef  int /*<<< orphan*/  rx_status ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* query_rx_desc ) (struct rtw_dev*,int /*<<< orphan*/ *,struct rtw_rx_pkt_stat*,struct ieee80211_rx_status*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  RTK_PCI_RXBD_IDX_MPDUQ ; 
 int /*<<< orphan*/  RTK_PCI_RX_BUF_SIZE ; 
 size_t RTW_RX_QUEUE_MPDU ; 
 scalar_t__ FUNC0 (int,char*) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct ieee80211_rx_status*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtw_dev*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtw_dev*,struct rtw_pci_rx_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rtw_dev*,int /*<<< orphan*/ ,struct rtw_pci_rx_ring*,int,int) ; 
 int FUNC8 (struct rtw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtw_dev*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtw_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtw_dev*,int /*<<< orphan*/ *,struct rtw_rx_pkt_stat*,struct ieee80211_rx_status*) ; 

__attribute__((used)) static void FUNC14(struct rtw_dev *rtwdev, struct rtw_pci *rtwpci,
			   u8 hw_queue)
{
	struct rtw_chip_info *chip = rtwdev->chip;
	struct rtw_pci_rx_ring *ring;
	struct rtw_rx_pkt_stat pkt_stat;
	struct ieee80211_rx_status rx_status;
	struct sk_buff *skb, *new;
	u32 cur_wp, cur_rp, tmp;
	u32 count;
	u32 pkt_offset;
	u32 pkt_desc_sz = chip->rx_pkt_desc_sz;
	u32 buf_desc_sz = chip->rx_buf_desc_sz;
	u32 new_len;
	u8 *rx_desc;
	dma_addr_t dma;

	ring = &rtwpci->rx_rings[RTW_RX_QUEUE_MPDU];

	tmp = FUNC8(rtwdev, RTK_PCI_RXBD_IDX_MPDUQ);
	cur_wp = tmp >> 16;
	cur_wp &= 0xfff;
	if (cur_wp >= ring->r.wp)
		count = cur_wp - ring->r.wp;
	else
		count = ring->r.len - (ring->r.wp - cur_wp);

	cur_rp = ring->r.rp;
	while (count--) {
		FUNC6(rtwdev, ring, cur_rp);
		skb = ring->buf[cur_rp];
		dma = *((dma_addr_t *)skb->cb);
		FUNC2(rtwdev->dev, dma, RTK_PCI_RX_BUF_SIZE,
					DMA_FROM_DEVICE);
		rx_desc = skb->data;
		chip->ops->query_rx_desc(rtwdev, rx_desc, &pkt_stat, &rx_status);

		/* offset from rx_desc to payload */
		pkt_offset = pkt_desc_sz + pkt_stat.drv_info_sz +
			     pkt_stat.shift;

		/* allocate a new skb for this frame,
		 * discard the frame if none available
		 */
		new_len = pkt_stat.pkt_len + pkt_offset;
		new = FUNC1(new_len);
		if (FUNC0(!new, "rx routine starvation\n"))
			goto next_rp;

		/* put the DMA data including rx_desc from phy to new skb */
		FUNC12(new, skb->data, new_len);

		if (pkt_stat.is_c2h) {
			FUNC5(rtwdev, pkt_offset, new);
		} else {
			/* remove rx_desc */
			FUNC11(new, pkt_offset);

			FUNC9(rtwdev, pkt_stat.vif, new);
			FUNC4(new->cb, &rx_status, sizeof(rx_status));
			FUNC3(rtwdev->hw, new);
		}

next_rp:
		/* new skb delivered to mac80211, re-enable original skb DMA */
		FUNC7(rtwdev, dma, ring, cur_rp,
					    buf_desc_sz);

		/* host read next element in ring */
		if (++cur_rp >= ring->r.len)
			cur_rp = 0;
	}

	ring->r.rp = cur_rp;
	ring->r.wp = cur_wp;
	FUNC10(rtwdev, RTK_PCI_RXBD_IDX_MPDUQ, ring->r.rp);
}