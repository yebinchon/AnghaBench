
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_priv {int dummy; } ;
struct sta_info {struct recv_reorder_ctrl* recvreorder_ctrl; } ;
struct recv_reorder_ctrl {int indicate_seq; int enable; } ;
struct mlme_ext_info {int accept_addba_req; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; struct sta_priv stapriv; } ;
struct ADDBA_request {int BA_para_set; } ;


 int le16_to_cpu (int ) ;
 struct sta_info* rtw_get_stainfo (struct sta_priv*,int *) ;

void process_addba_req(struct adapter *padapter, u8 *paddba_req, u8 *addr)
{
 struct sta_info *psta;
 u16 tid;
 u16 param;
 struct recv_reorder_ctrl *preorder_ctrl;
 struct sta_priv *pstapriv = &padapter->stapriv;
 struct ADDBA_request *preq = (struct ADDBA_request *)paddba_req;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 psta = rtw_get_stainfo(pstapriv, addr);

 if (psta) {
  param = le16_to_cpu(preq->BA_para_set);
  tid = (param >> 2) & 0x0f;
  preorder_ctrl = &psta->recvreorder_ctrl[tid];
  preorder_ctrl->indicate_seq = 0xffff;
  preorder_ctrl->enable = pmlmeinfo->accept_addba_req;
 }
}
