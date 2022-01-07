
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct rx_pkt_attrib {int crc_err; int pkt_rpt_type; int drvinfo_sz; int physt; int bdecrypted; int encrypt; int qos; int priority; int amsdu; int frag_num; int mfrag; int mdata; int mcs_rate; int rxht; int icv_err; int shift_sz; int* MacIDValidEntry; void* pkt_len; void* seq_num; } ;
struct recv_stat {int rxdw0; int rxdw5; int rxdw4; int rxdw3; int rxdw1; int rxdw2; } ;
struct recv_frame {struct rx_pkt_attrib attrib; } ;


 int BIT (int) ;
 scalar_t__ HIS_REPORT ;
 scalar_t__ NORMAL_RX ;
 scalar_t__ TX_REPORT1 ;
 scalar_t__ TX_REPORT2 ;
 void* TX_RPT1_PKT_LEN ;
 int le32_to_cpu (int ) ;
 int memset (struct rx_pkt_attrib*,int ,int) ;

void update_recvframe_attrib_88e(struct recv_frame *precvframe,
     struct recv_stat *prxstat)
{
 struct rx_pkt_attrib *pattrib;
 struct recv_stat report;

 report.rxdw0 = prxstat->rxdw0;
 report.rxdw1 = prxstat->rxdw1;
 report.rxdw2 = prxstat->rxdw2;
 report.rxdw3 = prxstat->rxdw3;
 report.rxdw4 = prxstat->rxdw4;
 report.rxdw5 = prxstat->rxdw5;

 pattrib = &precvframe->attrib;
 memset(pattrib, 0, sizeof(struct rx_pkt_attrib));

 pattrib->crc_err = (u8)((le32_to_cpu(report.rxdw0) >> 14) & 0x1);


 pattrib->pkt_rpt_type = (u8)((le32_to_cpu(report.rxdw3) >> 14) & 0x3);

 if (pattrib->pkt_rpt_type == NORMAL_RX) {
  pattrib->pkt_len = (u16)(le32_to_cpu(report.rxdw0) & 0x00003fff);
  pattrib->drvinfo_sz = (u8)((le32_to_cpu(report.rxdw0) >> 16) & 0xf) * 8;

  pattrib->physt = (u8)((le32_to_cpu(report.rxdw0) >> 26) & 0x1);

  pattrib->bdecrypted = (le32_to_cpu(report.rxdw0) & BIT(27)) ? 0 : 1;
  pattrib->encrypt = (u8)((le32_to_cpu(report.rxdw0) >> 20) & 0x7);

  pattrib->qos = (u8)((le32_to_cpu(report.rxdw0) >> 23) & 0x1);
  pattrib->priority = (u8)((le32_to_cpu(report.rxdw1) >> 8) & 0xf);

  pattrib->amsdu = (u8)((le32_to_cpu(report.rxdw1) >> 13) & 0x1);

  pattrib->seq_num = (u16)(le32_to_cpu(report.rxdw2) & 0x00000fff);
  pattrib->frag_num = (u8)((le32_to_cpu(report.rxdw2) >> 12) & 0xf);
  pattrib->mfrag = (u8)((le32_to_cpu(report.rxdw1) >> 27) & 0x1);
  pattrib->mdata = (u8)((le32_to_cpu(report.rxdw1) >> 26) & 0x1);

  pattrib->mcs_rate = (u8)(le32_to_cpu(report.rxdw3) & 0x3f);
  pattrib->rxht = (u8)((le32_to_cpu(report.rxdw3) >> 6) & 0x1);

  pattrib->icv_err = (u8)((le32_to_cpu(report.rxdw0) >> 15) & 0x1);
  pattrib->shift_sz = (u8)((le32_to_cpu(report.rxdw0) >> 24) & 0x3);
 } else if (pattrib->pkt_rpt_type == TX_REPORT1) {
  pattrib->pkt_len = TX_RPT1_PKT_LEN;
  pattrib->drvinfo_sz = 0;
 } else if (pattrib->pkt_rpt_type == TX_REPORT2) {
  pattrib->pkt_len = (u16)(le32_to_cpu(report.rxdw0) & 0x3FF);
  pattrib->drvinfo_sz = 0;




  pattrib->MacIDValidEntry[0] = le32_to_cpu(report.rxdw4);
  pattrib->MacIDValidEntry[1] = le32_to_cpu(report.rxdw5);

 } else if (pattrib->pkt_rpt_type == HIS_REPORT) {
  pattrib->pkt_len = (u16)(le32_to_cpu(report.rxdw0) & 0x00003fff);
 }
}
