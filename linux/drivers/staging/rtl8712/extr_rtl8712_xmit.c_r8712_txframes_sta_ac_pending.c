
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_servq {int qcnt; } ;
struct TYPE_2__ {struct tx_servq be_q; struct tx_servq vo_q; struct tx_servq vi_q; struct tx_servq bk_q; } ;
struct sta_info {TYPE_1__ sta_xmitpriv; } ;
struct pkt_attrib {int priority; struct sta_info* psta; } ;
struct _adapter {int dummy; } ;



int r8712_txframes_sta_ac_pending(struct _adapter *padapter,
      struct pkt_attrib *pattrib)
{
 struct sta_info *psta;
 struct tx_servq *ptxservq;
 int priority = pattrib->priority;

 psta = pattrib->psta;
 switch (priority) {
 case 1:
 case 2:
  ptxservq = &psta->sta_xmitpriv.bk_q;
  break;
 case 4:
 case 5:
  ptxservq = &psta->sta_xmitpriv.vi_q;
  break;
 case 6:
 case 7:
  ptxservq = &psta->sta_xmitpriv.vo_q;
  break;
 case 0:
 case 3:
 default:
  ptxservq = &psta->sta_xmitpriv.be_q;
 break;
 }
 return ptxservq->qcnt;
}
