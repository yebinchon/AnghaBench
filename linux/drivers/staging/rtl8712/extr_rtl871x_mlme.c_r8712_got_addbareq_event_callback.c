
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_priv {int dummy; } ;
struct sta_info {struct recv_reorder_ctrl* recvreorder_ctrl; } ;
struct recv_reorder_ctrl {int indicate_seq; } ;
struct _adapter {struct sta_priv stapriv; } ;
struct ADDBA_Req_Report_parm {size_t tid; int MacAddress; } ;


 struct sta_info* r8712_get_stainfo (struct sta_priv*,int ) ;

void r8712_got_addbareq_event_callback(struct _adapter *adapter, u8 *pbuf)
{
 struct ADDBA_Req_Report_parm *pAddbareq_pram =
    (struct ADDBA_Req_Report_parm *)pbuf;
 struct sta_info *psta;
 struct sta_priv *pstapriv = &adapter->stapriv;
 struct recv_reorder_ctrl *precvreorder_ctrl = ((void*)0);

 psta = r8712_get_stainfo(pstapriv, pAddbareq_pram->MacAddress);
 if (psta) {
  precvreorder_ctrl =
    &psta->recvreorder_ctrl[pAddbareq_pram->tid];



  precvreorder_ctrl->indicate_seq = 0xffff;
 }
}
