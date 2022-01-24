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
typedef  int uint ;
typedef  int u8 ;
struct pkt_attrib {int mac_id; int qsel; int raid; int seqnum; int ether_type; int dhcp_pkt; scalar_t__ qos_en; scalar_t__ retry_ctrl; scalar_t__ ht_en; scalar_t__ ampdu_en; int /*<<< orphan*/  ra; } ;
struct xmit_frame {scalar_t__ pkt_offset; int frame_tag; int agg_num; scalar_t__ ack_report; struct pkt_attrib attrib; struct adapter* padapter; } ;
struct tx_desc {int /*<<< orphan*/  txdw4; int /*<<< orphan*/  txdw3; int /*<<< orphan*/  txdw5; int /*<<< orphan*/  txdw1; int /*<<< orphan*/  txdw2; int /*<<< orphan*/  txdw6; int /*<<< orphan*/  txdw0; } ;
struct odm_dm_struct {int dummy; } ;
struct mlme_ext_info {scalar_t__ preamble_mode; } ;
struct mlme_ext_priv {int /*<<< orphan*/  tx_rate; struct mlme_ext_info mlmext_info; } ;
struct TYPE_4__ {scalar_t__ mp_mode; } ;
struct adapter {TYPE_2__ registrypriv; struct mlme_ext_priv mlmeextpriv; TYPE_1__* HalData; } ;
typedef  int s32 ;
struct TYPE_3__ {struct odm_dm_struct odmpriv; } ;

/* Variables and functions */
 int AGG_BK ; 
 int AGG_EN ; 
 int FUNC0 (int) ; 
 int BMC ; 
 int DATA_FRAMETAG ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EN_HWSEQ ; 
 int FSG ; 
 int HW_SSN ; 
 int LSG ; 
 int MGNT_FRAMETAG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct odm_dm_struct*,int) ; 
 int FUNC4 (struct odm_dm_struct*,int) ; 
 scalar_t__ FUNC5 (struct odm_dm_struct*,int) ; 
 int OFFSET_SHT ; 
 int OFFSET_SZ ; 
 int OWN ; 
 int PACKET_OFFSET_SZ ; 
 scalar_t__ PREAMBLE_SHORT ; 
 int PWR_STATUS_SHT ; 
 int QOS ; 
 int QSEL_SHT ; 
 int RATE_ID_SHT ; 
 int RTY_LMT_EN ; 
 int SEQ_SHT ; 
 int SGI ; 
 int TXAGG_FRAMETAG ; 
 int TXDESC_SIZE ; 
 int USB_TXAGG_NUM_SHT ; 
 int USERATE ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int,struct tx_desc*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct pkt_attrib*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pkt_attrib*,struct tx_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct pkt_attrib*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct tx_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct tx_desc*) ; 
 int /*<<< orphan*/  FUNC14 (struct odm_dm_struct*,int*,int) ; 
 scalar_t__ FUNC15 (struct adapter*,int) ; 

__attribute__((used)) static s32 FUNC16(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bagg_pkt)
{
	int pull = 0;
	uint qsel;
	u8 data_rate, pwr_status, offset;
	struct adapter *adapt = pxmitframe->padapter;
	struct pkt_attrib *pattrib = &pxmitframe->attrib;
	struct odm_dm_struct *odmpriv = &adapt->HalData->odmpriv;
	struct tx_desc *ptxdesc = (struct tx_desc *)pmem;
	struct mlme_ext_priv *pmlmeext = &adapt->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

	if (adapt->registrypriv.mp_mode == 0) {
		if ((!bagg_pkt) && (FUNC15(adapt, sz) == 0)) {
			ptxdesc = (struct tx_desc *)(pmem+PACKET_OFFSET_SZ);
			pull = 1;
		}
	}

	FUNC12(ptxdesc, 0, sizeof(struct tx_desc));

	/* 4 offset 0 */
	ptxdesc->txdw0 |= FUNC7(OWN | FSG | LSG);
	ptxdesc->txdw0 |= FUNC7(sz & 0x0000ffff);/* update TXPKTSIZE */

	offset = TXDESC_SIZE + OFFSET_SZ;

	ptxdesc->txdw0 |= FUNC7(((offset) << OFFSET_SHT) & 0x00ff0000);/* 32 bytes for TX Desc */

	if (FUNC11(pattrib->ra))
		ptxdesc->txdw0 |= FUNC7(BMC);

	if (adapt->registrypriv.mp_mode == 0) {
		if (!bagg_pkt) {
			if ((pull) && (pxmitframe->pkt_offset > 0))
				pxmitframe->pkt_offset = pxmitframe->pkt_offset - 1;
		}
	}

	/*  pkt_offset, unit:8 bytes padding */
	if (pxmitframe->pkt_offset > 0)
		ptxdesc->txdw1 |= FUNC7((pxmitframe->pkt_offset << 26) & 0x7c000000);

	/* driver uses rate */
	ptxdesc->txdw4 |= FUNC7(USERATE);/* rate control always by driver */

	if ((pxmitframe->frame_tag & 0x0f) == DATA_FRAMETAG) {
		/* offset 4 */
		ptxdesc->txdw1 |= FUNC7(pattrib->mac_id & 0x3F);

		qsel = (uint)(pattrib->qsel & 0x0000001f);
		ptxdesc->txdw1 |= FUNC7((qsel << QSEL_SHT) & 0x00001f00);

		ptxdesc->txdw1 |= FUNC7((pattrib->raid << RATE_ID_SHT) & 0x000F0000);

		FUNC9(pattrib, ptxdesc);

		if (pattrib->ampdu_en) {
			ptxdesc->txdw2 |= FUNC7(AGG_EN);/* AGG EN */
			ptxdesc->txdw6 = FUNC7(0x6666f800);
		} else {
			ptxdesc->txdw2 |= FUNC7(AGG_BK);/* AGG BK */
		}

		/* offset 8 */

		/* offset 12 */
		ptxdesc->txdw3 |= FUNC7((pattrib->seqnum << SEQ_SHT) & 0x0FFF0000);

		/* offset 16 , offset 20 */
		if (pattrib->qos_en)
			ptxdesc->txdw4 |= FUNC7(QOS);/* QoS */

		/* offset 20 */
		if (pxmitframe->agg_num > 1)
			ptxdesc->txdw5 |= FUNC7((pxmitframe->agg_num << USB_TXAGG_NUM_SHT) & 0xFF000000);

		if ((pattrib->ether_type != 0x888e) &&
		    (pattrib->ether_type != 0x0806) &&
		    (pattrib->ether_type != 0x88b4) &&
		    (pattrib->dhcp_pkt != 1)) {
			/* Non EAP & ARP & DHCP type data packet */

			FUNC10(pattrib, &ptxdesc->txdw4);
			FUNC8(pattrib, &ptxdesc->txdw4);

			ptxdesc->txdw4 |= FUNC7(0x00000008);/* RTS Rate=24M */
			ptxdesc->txdw5 |= FUNC7(0x0001ff00);/* DATA/RTS  Rate FB LMT */

			if (pattrib->ht_en) {
				if (FUNC5(odmpriv, pattrib->mac_id))
					ptxdesc->txdw5 |= FUNC7(SGI);/* SGI */
			}
			data_rate = FUNC3(odmpriv, pattrib->mac_id);
			ptxdesc->txdw5 |= FUNC7(data_rate & 0x3F);
			pwr_status = FUNC4(odmpriv, pattrib->mac_id);
			ptxdesc->txdw4 |= FUNC7((pwr_status & 0x7) << PWR_STATUS_SHT);
		} else {
			/*  EAP data packet and ARP packet and DHCP. */
			/*  Use the 1M data rate to send the EAP/ARP packet. */
			/*  This will maybe make the handshake smooth. */
			ptxdesc->txdw2 |= FUNC7(AGG_BK);/* AGG BK */
			if (pmlmeinfo->preamble_mode == PREAMBLE_SHORT)
				ptxdesc->txdw4 |= FUNC7(FUNC0(24));/*  DATA_SHORT */
			ptxdesc->txdw5 |= FUNC7(FUNC2(pmlmeext->tx_rate));
		}
	} else if ((pxmitframe->frame_tag&0x0f) == MGNT_FRAMETAG) {
		/* offset 4 */
		ptxdesc->txdw1 |= FUNC7(pattrib->mac_id & 0x3f);

		qsel = (uint)(pattrib->qsel&0x0000001f);
		ptxdesc->txdw1 |= FUNC7((qsel << QSEL_SHT) & 0x00001f00);

		ptxdesc->txdw1 |= FUNC7((pattrib->raid << RATE_ID_SHT) & 0x000f0000);

		/* offset 8 */
		/* CCX-TXRPT ack for xmit mgmt frames. */
		if (pxmitframe->ack_report)
			ptxdesc->txdw2 |= FUNC7(FUNC0(19));

		/* offset 12 */
		ptxdesc->txdw3 |= FUNC7((pattrib->seqnum<<SEQ_SHT)&0x0FFF0000);

		/* offset 20 */
		ptxdesc->txdw5 |= FUNC7(RTY_LMT_EN);/* retry limit enable */
		if (pattrib->retry_ctrl)
			ptxdesc->txdw5 |= FUNC7(0x00180000);/* retry limit = 6 */
		else
			ptxdesc->txdw5 |= FUNC7(0x00300000);/* retry limit = 12 */

		ptxdesc->txdw5 |= FUNC7(FUNC2(pmlmeext->tx_rate));
	} else if ((pxmitframe->frame_tag&0x0f) == TXAGG_FRAMETAG) {
		FUNC1("pxmitframe->frame_tag == TXAGG_FRAMETAG\n");
	} else {
		FUNC1("pxmitframe->frame_tag = %d\n", pxmitframe->frame_tag);

		/* offset 4 */
		ptxdesc->txdw1 |= FUNC7((4) & 0x3f);/* CAM_ID(MAC_ID) */

		ptxdesc->txdw1 |= FUNC7((6 << RATE_ID_SHT) & 0x000f0000);/* raid */

		/* offset 8 */

		/* offset 12 */
		ptxdesc->txdw3 |= FUNC7((pattrib->seqnum<<SEQ_SHT)&0x0fff0000);

		/* offset 20 */
		ptxdesc->txdw5 |= FUNC7(FUNC2(pmlmeext->tx_rate));
	}

	/*  2009.11.05. tynli_test. Suggested by SD4 Filen for FW LPS. */
	/*  (1) The sequence number of each non-Qos frame / broadcast / multicast / */
	/*  mgnt frame should be controlled by Hw because Fw will also send null data */
	/*  which we cannot control when Fw LPS enable. */
	/*  --> default enable non-Qos data sequense number. 2010.06.23. by tynli. */
	/*  (2) Enable HW SEQ control for beacon packet, because we use Hw beacon. */
	/*  (3) Use HW Qos SEQ to control the seq num of Ext port non-Qos packets. */
	/*  2010.06.23. Added by tynli. */
	if (!pattrib->qos_en) {
		ptxdesc->txdw3 |= FUNC7(EN_HWSEQ); /*  Hw set sequence number */
		ptxdesc->txdw4 |= FUNC7(HW_SSN);	/*  Hw set sequence number */
	}

	FUNC14(odmpriv, pmem, pattrib->mac_id);

	FUNC13(ptxdesc);
	FUNC6(adapt, pxmitframe->frame_tag, ptxdesc);
	return pull;
}