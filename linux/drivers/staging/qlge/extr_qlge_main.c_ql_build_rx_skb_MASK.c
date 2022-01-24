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
typedef  int u32 ;
struct sk_buff {int len; int data_len; int truesize; int /*<<< orphan*/  data; } ;
struct rx_ring {int lbq_buf_size; } ;
struct ql_adapter {int /*<<< orphan*/  ndev; int /*<<< orphan*/  pdev; } ;
struct ib_mac_iocb_rsp {int flags4; int flags3; int /*<<< orphan*/  hdr_len; int /*<<< orphan*/  data_len; } ;
struct TYPE_3__ {int offset; int /*<<< orphan*/  va; int /*<<< orphan*/  page; } ;
struct TYPE_4__ {TYPE_1__ pg_chunk; struct sk_buff* skb; } ;
struct bq_desc {TYPE_2__ p; } ;

/* Variables and functions */
 size_t ETH_HLEN ; 
 int IB_MAC_IOCB_RSP_DL ; 
 int IB_MAC_IOCB_RSP_DS ; 
 int IB_MAC_IOCB_RSP_HS ; 
 int IB_MAC_IOCB_RSP_HV ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  NET_IP_ALIGN ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct bq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bq_desc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 struct bq_desc* FUNC10 (struct ql_adapter*,struct rx_ring*) ; 
 struct bq_desc* FUNC11 (struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ql_adapter*,struct ib_mac_iocb_rsp*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC19(struct ql_adapter *qdev,
				       struct rx_ring *rx_ring,
				       struct ib_mac_iocb_rsp *ib_mac_rsp)
{
	struct bq_desc *lbq_desc;
	struct bq_desc *sbq_desc;
	struct sk_buff *skb = NULL;
	u32 length = FUNC3(ib_mac_rsp->data_len);
	u32 hdr_len = FUNC3(ib_mac_rsp->hdr_len);
	size_t hlen = ETH_HLEN;

	/*
	 * Handle the header buffer if present.
	 */
	if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HV &&
	    ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS) {
		FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "Header of %d bytes in small buffer.\n", hdr_len);
		/*
		 * Headers fit nicely into a small buffer.
		 */
		sbq_desc = FUNC11(rx_ring);
		FUNC9(qdev->pdev,
				FUNC1(sbq_desc, mapaddr),
				FUNC2(sbq_desc, maplen),
				PCI_DMA_FROMDEVICE);
		skb = sbq_desc->p.skb;
		FUNC12(skb, hdr_len);
		FUNC15(skb, hdr_len);
		sbq_desc->p.skb = NULL;
	}

	/*
	 * Handle the data buffer(s).
	 */
	if (FUNC18(!length)) {	/* Is there data too? */
		FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "No Data buffer in this packet.\n");
		return skb;
	}

	if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DS) {
		if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS) {
			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "Headers in small, data of %d bytes in small, combine them.\n",
				     length);
			/*
			 * Data is less than small buffer size so it's
			 * stuffed in a small buffer.
			 * For this case we append the data
			 * from the "data" small buffer to the "header" small
			 * buffer.
			 */
			sbq_desc = FUNC11(rx_ring);
			FUNC6(qdev->pdev,
						    FUNC1
						    (sbq_desc, mapaddr),
						    FUNC2
						    (sbq_desc, maplen),
						    PCI_DMA_FROMDEVICE);
			FUNC16(skb, sbq_desc->p.skb->data, length);
			FUNC7(qdev->pdev,
						       FUNC1
						       (sbq_desc,
							mapaddr),
						       FUNC2
						       (sbq_desc,
							maplen),
						       PCI_DMA_FROMDEVICE);
		} else {
			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "%d bytes in a single small buffer.\n",
				     length);
			sbq_desc = FUNC11(rx_ring);
			skb = sbq_desc->p.skb;
			FUNC12(skb, length);
			FUNC15(skb, length);
			FUNC9(qdev->pdev,
					 FUNC1(sbq_desc,
							mapaddr),
					 FUNC2(sbq_desc,
						       maplen),
					 PCI_DMA_FROMDEVICE);
			sbq_desc->p.skb = NULL;
		}
	} else if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DL) {
		if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS) {
			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "Header in small, %d bytes in large. Chain large to small!\n",
				     length);
			/*
			 * The data is in a single large buffer.  We
			 * chain it to the header buffer's skb and let
			 * it rip.
			 */
			lbq_desc = FUNC10(qdev, rx_ring);
			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "Chaining page at offset = %d, for %d bytes  to skb.\n",
				     lbq_desc->p.pg_chunk.offset, length);
			FUNC14(skb, 0, lbq_desc->p.pg_chunk.page,
						lbq_desc->p.pg_chunk.offset,
						length);
			skb->len += length;
			skb->data_len += length;
			skb->truesize += length;
		} else {
			/*
			 * The headers and data are in a single large buffer. We
			 * copy it to a new skb and let it go. This can happen with
			 * jumbo mtu on a non-TCP/UDP frame.
			 */
			lbq_desc = FUNC10(qdev, rx_ring);
			skb = FUNC4(qdev->ndev, length);
			if (skb == NULL) {
				FUNC5(qdev, probe, KERN_DEBUG, qdev->ndev,
					     "No skb available, drop the packet.\n");
				return NULL;
			}
			FUNC8(qdev->pdev,
				       FUNC1(lbq_desc,
						      mapaddr),
				       FUNC2(lbq_desc, maplen),
				       PCI_DMA_FROMDEVICE);
			FUNC17(skb, NET_IP_ALIGN);
			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "%d bytes of headers and data in large. Chain page to new skb and pull tail.\n",
				     length);
			FUNC14(skb, 0,
						lbq_desc->p.pg_chunk.page,
						lbq_desc->p.pg_chunk.offset,
						length);
			skb->len += length;
			skb->data_len += length;
			skb->truesize += length;
			FUNC13(qdev, ib_mac_rsp,
					      lbq_desc->p.pg_chunk.va,
					      &hlen);
			FUNC0(skb, hlen);
		}
	} else {
		/*
		 * The data is in a chain of large buffers
		 * pointed to by a small buffer.  We loop
		 * thru and chain them to the our small header
		 * buffer's skb.
		 * frags:  There are 18 max frags and our small
		 *         buffer will hold 32 of them. The thing is,
		 *         we'll use 3 max for our 9000 byte jumbo
		 *         frames.  If the MTU goes up we could
		 *          eventually be in trouble.
		 */
		int size, i = 0;
		sbq_desc = FUNC11(rx_ring);
		FUNC9(qdev->pdev,
				 FUNC1(sbq_desc, mapaddr),
				 FUNC2(sbq_desc, maplen),
				 PCI_DMA_FROMDEVICE);
		if (!(ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS)) {
			/*
			 * This is an non TCP/UDP IP frame, so
			 * the headers aren't split into a small
			 * buffer.  We have to use the small buffer
			 * that contains our sg list as our skb to
			 * send upstairs. Copy the sg list here to
			 * a local buffer and use it to find the
			 * pages to chain.
			 */
			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "%d bytes of headers & data in chain of large.\n",
				     length);
			skb = sbq_desc->p.skb;
			sbq_desc->p.skb = NULL;
			FUNC17(skb, NET_IP_ALIGN);
		}
		do {
			lbq_desc = FUNC10(qdev, rx_ring);
			size = (length < rx_ring->lbq_buf_size) ? length :
				rx_ring->lbq_buf_size;

			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "Adding page %d to skb for %d bytes.\n",
				     i, size);
			FUNC14(skb, i,
						lbq_desc->p.pg_chunk.page,
						lbq_desc->p.pg_chunk.offset,
						size);
			skb->len += size;
			skb->data_len += size;
			skb->truesize += size;
			length -= size;
			i++;
		} while (length > 0);
		FUNC13(qdev, ib_mac_rsp, lbq_desc->p.pg_chunk.va,
				      &hlen);
		FUNC0(skb, hlen);
	}
	return skb;
}