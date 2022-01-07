
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
struct pkt_attrib {int mac_id; int qsel; int raid; int seqnum; int ether_type; int dhcp_pkt; scalar_t__ qos_en; scalar_t__ retry_ctrl; scalar_t__ ht_en; scalar_t__ ampdu_en; int ra; } ;
struct xmit_frame {scalar_t__ pkt_offset; int frame_tag; int agg_num; scalar_t__ ack_report; struct pkt_attrib attrib; struct adapter* padapter; } ;
struct tx_desc {int txdw4; int txdw3; int txdw5; int txdw1; int txdw2; int txdw6; int txdw0; } ;
struct odm_dm_struct {int dummy; } ;
struct mlme_ext_info {scalar_t__ preamble_mode; } ;
struct mlme_ext_priv {int tx_rate; struct mlme_ext_info mlmext_info; } ;
struct TYPE_4__ {scalar_t__ mp_mode; } ;
struct adapter {TYPE_2__ registrypriv; struct mlme_ext_priv mlmeextpriv; TYPE_1__* HalData; } ;
typedef int s32 ;
struct TYPE_3__ {struct odm_dm_struct odmpriv; } ;


 int AGG_BK ;
 int AGG_EN ;
 int BIT (int) ;
 int BMC ;
 int DATA_FRAMETAG ;
 int DBG_88E (char*,...) ;
 int EN_HWSEQ ;
 int FSG ;
 int HW_SSN ;
 int LSG ;
 int MGNT_FRAMETAG ;
 int MRateToHwRate (int ) ;
 int ODM_RA_GetDecisionRate_8188E (struct odm_dm_struct*,int) ;
 int ODM_RA_GetHwPwrStatus_8188E (struct odm_dm_struct*,int) ;
 scalar_t__ ODM_RA_GetShortGI_8188E (struct odm_dm_struct*,int) ;
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
 int _dbg_dump_tx_info (struct adapter*,int,struct tx_desc*) ;
 int cpu_to_le32 (int) ;
 int fill_txdesc_phy (struct pkt_attrib*,int *) ;
 int fill_txdesc_sectype (struct pkt_attrib*,struct tx_desc*) ;
 int fill_txdesc_vcs (struct pkt_attrib*,int *) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int memset (struct tx_desc*,int ,int) ;
 int rtl8188eu_cal_txdesc_chksum (struct tx_desc*) ;
 int rtl88eu_dm_set_tx_ant_by_tx_info (struct odm_dm_struct*,int*,int) ;
 scalar_t__ urb_zero_packet_chk (struct adapter*,int) ;

__attribute__((used)) static s32 update_txdesc(struct xmit_frame *pxmitframe, u8 *pmem, s32 sz, u8 bagg_pkt)
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
  if ((!bagg_pkt) && (urb_zero_packet_chk(adapt, sz) == 0)) {
   ptxdesc = (struct tx_desc *)(pmem+PACKET_OFFSET_SZ);
   pull = 1;
  }
 }

 memset(ptxdesc, 0, sizeof(struct tx_desc));


 ptxdesc->txdw0 |= cpu_to_le32(OWN | FSG | LSG);
 ptxdesc->txdw0 |= cpu_to_le32(sz & 0x0000ffff);

 offset = TXDESC_SIZE + OFFSET_SZ;

 ptxdesc->txdw0 |= cpu_to_le32(((offset) << OFFSET_SHT) & 0x00ff0000);

 if (is_multicast_ether_addr(pattrib->ra))
  ptxdesc->txdw0 |= cpu_to_le32(BMC);

 if (adapt->registrypriv.mp_mode == 0) {
  if (!bagg_pkt) {
   if ((pull) && (pxmitframe->pkt_offset > 0))
    pxmitframe->pkt_offset = pxmitframe->pkt_offset - 1;
  }
 }


 if (pxmitframe->pkt_offset > 0)
  ptxdesc->txdw1 |= cpu_to_le32((pxmitframe->pkt_offset << 26) & 0x7c000000);


 ptxdesc->txdw4 |= cpu_to_le32(USERATE);

 if ((pxmitframe->frame_tag & 0x0f) == DATA_FRAMETAG) {

  ptxdesc->txdw1 |= cpu_to_le32(pattrib->mac_id & 0x3F);

  qsel = (uint)(pattrib->qsel & 0x0000001f);
  ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);

  ptxdesc->txdw1 |= cpu_to_le32((pattrib->raid << RATE_ID_SHT) & 0x000F0000);

  fill_txdesc_sectype(pattrib, ptxdesc);

  if (pattrib->ampdu_en) {
   ptxdesc->txdw2 |= cpu_to_le32(AGG_EN);
   ptxdesc->txdw6 = cpu_to_le32(0x6666f800);
  } else {
   ptxdesc->txdw2 |= cpu_to_le32(AGG_BK);
  }




  ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum << SEQ_SHT) & 0x0FFF0000);


  if (pattrib->qos_en)
   ptxdesc->txdw4 |= cpu_to_le32(QOS);


  if (pxmitframe->agg_num > 1)
   ptxdesc->txdw5 |= cpu_to_le32((pxmitframe->agg_num << USB_TXAGG_NUM_SHT) & 0xFF000000);

  if ((pattrib->ether_type != 0x888e) &&
      (pattrib->ether_type != 0x0806) &&
      (pattrib->ether_type != 0x88b4) &&
      (pattrib->dhcp_pkt != 1)) {


   fill_txdesc_vcs(pattrib, &ptxdesc->txdw4);
   fill_txdesc_phy(pattrib, &ptxdesc->txdw4);

   ptxdesc->txdw4 |= cpu_to_le32(0x00000008);
   ptxdesc->txdw5 |= cpu_to_le32(0x0001ff00);

   if (pattrib->ht_en) {
    if (ODM_RA_GetShortGI_8188E(odmpriv, pattrib->mac_id))
     ptxdesc->txdw5 |= cpu_to_le32(SGI);
   }
   data_rate = ODM_RA_GetDecisionRate_8188E(odmpriv, pattrib->mac_id);
   ptxdesc->txdw5 |= cpu_to_le32(data_rate & 0x3F);
   pwr_status = ODM_RA_GetHwPwrStatus_8188E(odmpriv, pattrib->mac_id);
   ptxdesc->txdw4 |= cpu_to_le32((pwr_status & 0x7) << PWR_STATUS_SHT);
  } else {



   ptxdesc->txdw2 |= cpu_to_le32(AGG_BK);
   if (pmlmeinfo->preamble_mode == PREAMBLE_SHORT)
    ptxdesc->txdw4 |= cpu_to_le32(BIT(24));
   ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
  }
 } else if ((pxmitframe->frame_tag&0x0f) == MGNT_FRAMETAG) {

  ptxdesc->txdw1 |= cpu_to_le32(pattrib->mac_id & 0x3f);

  qsel = (uint)(pattrib->qsel&0x0000001f);
  ptxdesc->txdw1 |= cpu_to_le32((qsel << QSEL_SHT) & 0x00001f00);

  ptxdesc->txdw1 |= cpu_to_le32((pattrib->raid << RATE_ID_SHT) & 0x000f0000);



  if (pxmitframe->ack_report)
   ptxdesc->txdw2 |= cpu_to_le32(BIT(19));


  ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0FFF0000);


  ptxdesc->txdw5 |= cpu_to_le32(RTY_LMT_EN);
  if (pattrib->retry_ctrl)
   ptxdesc->txdw5 |= cpu_to_le32(0x00180000);
  else
   ptxdesc->txdw5 |= cpu_to_le32(0x00300000);

  ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
 } else if ((pxmitframe->frame_tag&0x0f) == TXAGG_FRAMETAG) {
  DBG_88E("pxmitframe->frame_tag == TXAGG_FRAMETAG\n");
 } else {
  DBG_88E("pxmitframe->frame_tag = %d\n", pxmitframe->frame_tag);


  ptxdesc->txdw1 |= cpu_to_le32((4) & 0x3f);

  ptxdesc->txdw1 |= cpu_to_le32((6 << RATE_ID_SHT) & 0x000f0000);




  ptxdesc->txdw3 |= cpu_to_le32((pattrib->seqnum<<SEQ_SHT)&0x0fff0000);


  ptxdesc->txdw5 |= cpu_to_le32(MRateToHwRate(pmlmeext->tx_rate));
 }
 if (!pattrib->qos_en) {
  ptxdesc->txdw3 |= cpu_to_le32(EN_HWSEQ);
  ptxdesc->txdw4 |= cpu_to_le32(HW_SSN);
 }

 rtl88eu_dm_set_tx_ant_by_tx_info(odmpriv, pmem, pattrib->mac_id);

 rtl8188eu_cal_txdesc_chksum(ptxdesc);
 _dbg_dump_tx_info(adapt, pxmitframe->frame_tag, ptxdesc);
 return pull;
}
