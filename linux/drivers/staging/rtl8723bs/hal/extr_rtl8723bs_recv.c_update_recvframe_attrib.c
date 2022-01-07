
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rx_pkt_attrib {scalar_t__ pkt_rpt_type; void* pkt_len; void* data_rate; void* mdata; void* mfrag; void* frag_num; void* seq_num; void* amsdu; void* priority; void* qos; void* encrypt; void* bdecrypted; void* icv_err; void* crc_err; void* physt; void* drvinfo_sz; } ;
struct TYPE_4__ {struct rx_pkt_attrib attrib; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef void* u8 ;
typedef void* u16 ;
struct recv_stat {int rxdw5; int rxdw4; int rxdw3; int rxdw2; int rxdw1; int rxdw0; } ;
struct adapter {int dummy; } ;
struct TYPE_6__ {int drvinfosize; scalar_t__ pktlen; scalar_t__ rx_rate; scalar_t__ md; scalar_t__ mf; scalar_t__ frag; scalar_t__ seq; scalar_t__ amsdu; scalar_t__ tid; scalar_t__ qos; scalar_t__ security; scalar_t__ swdec; scalar_t__ icverr; scalar_t__ crc32; scalar_t__ physt; scalar_t__ c2h_ind; } ;
typedef TYPE_3__* PRXREPORT ;


 scalar_t__ C2H_PACKET ;
 scalar_t__ NORMAL_RX ;
 int memset (struct rx_pkt_attrib*,int ,int) ;

__attribute__((used)) static void update_recvframe_attrib(struct adapter *padapter,
        union recv_frame *precvframe,
        struct recv_stat *prxstat)
{
 struct rx_pkt_attrib *pattrib;
 struct recv_stat report;
 PRXREPORT prxreport = (PRXREPORT)&report;

 report.rxdw0 = prxstat->rxdw0;
 report.rxdw1 = prxstat->rxdw1;
 report.rxdw2 = prxstat->rxdw2;
 report.rxdw3 = prxstat->rxdw3;
 report.rxdw4 = prxstat->rxdw4;
 report.rxdw5 = prxstat->rxdw5;

 pattrib = &precvframe->u.hdr.attrib;
 memset(pattrib, 0, sizeof(struct rx_pkt_attrib));


 pattrib->pkt_rpt_type = prxreport->c2h_ind ? C2H_PACKET : NORMAL_RX;


 if (pattrib->pkt_rpt_type == NORMAL_RX) {


  pattrib->pkt_len = (u16)prxreport->pktlen;
  pattrib->drvinfo_sz = (u8)(prxreport->drvinfosize << 3);
  pattrib->physt = (u8)prxreport->physt;

  pattrib->crc_err = (u8)prxreport->crc32;
  pattrib->icv_err = (u8)prxreport->icverr;

  pattrib->bdecrypted = (u8)(prxreport->swdec ? 0 : 1);
  pattrib->encrypt = (u8)prxreport->security;

  pattrib->qos = (u8)prxreport->qos;
  pattrib->priority = (u8)prxreport->tid;

  pattrib->amsdu = (u8)prxreport->amsdu;

  pattrib->seq_num = (u16)prxreport->seq;
  pattrib->frag_num = (u8)prxreport->frag;
  pattrib->mfrag = (u8)prxreport->mf;
  pattrib->mdata = (u8)prxreport->md;

  pattrib->data_rate = (u8)prxreport->rx_rate;
 } else {
  pattrib->pkt_len = (u16)prxreport->pktlen;
 }
}
