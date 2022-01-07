
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int pkt_len; } ;
struct TYPE_3__ {int* rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef int u8 ;
struct mlme_ext_priv {int sa_query_timer; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int DBG_871X (char*,...) ;
 int GetAddr2Ptr (int*) ;
 int WLAN_HDR_A3_LEN ;
 unsigned int _SUCCESS ;
 int del_timer_sync (int *) ;
 int issue_action_SA_Query (struct adapter*,int ,int,unsigned short) ;
 int memcpy (unsigned short*,int*,int) ;
 int printk (char*,...) ;

unsigned int OnAction_sa_query(struct adapter *padapter, union recv_frame *precv_frame)
{
 u8 *pframe = precv_frame->u.hdr.rx_data;
 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 unsigned short tid;


 DBG_871X("OnAction_sa_query\n");

 switch (pframe[WLAN_HDR_A3_LEN+1]) {
 case 0:
  memcpy(&tid, &pframe[WLAN_HDR_A3_LEN+2], sizeof(unsigned short));
  DBG_871X("OnAction_sa_query request, action =%d, tid =%04x\n", pframe[WLAN_HDR_A3_LEN+1], tid);
  issue_action_SA_Query(padapter, GetAddr2Ptr(pframe), 1, tid);
  break;

 case 1:
  del_timer_sync(&pmlmeext->sa_query_timer);
  DBG_871X("OnAction_sa_query response, action =%d, tid =%04x, cancel timer\n", pframe[WLAN_HDR_A3_LEN+1], pframe[WLAN_HDR_A3_LEN+2]);
  break;
 default:
  break;
 }
 if (0) {
  int pp;
  printk("pattrib->pktlen = %d =>", pattrib->pkt_len);
  for (pp = 0; pp < pattrib->pkt_len; pp++)
   printk(" %02x ", pframe[pp]);
  printk("\n");
 }

 return _SUCCESS;
}
