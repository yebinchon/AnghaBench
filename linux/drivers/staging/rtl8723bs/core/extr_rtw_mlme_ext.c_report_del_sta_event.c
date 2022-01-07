
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stadel_event {int mac_id; scalar_t__ rsvd; int macaddr; } ;
struct sta_info {scalar_t__ mac_id; } ;
struct mlme_ext_priv {int event_seq; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int * rsp; int * parmbuf; int cmdcode; int list; } ;
struct adapter {int stapriv; struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int seq; int ID; } ;


 int DBG_871X (char*,int) ;
 int ETH_ALEN ;
 int GEN_CMD_CODE (int ) ;
 int GEN_EVT_CODE (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int _DelSTA ;
 int _Set_MLME_EVT ;
 int atomic_inc_return (int *) ;
 int kfree (struct cmd_obj*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 struct sta_info* rtw_get_stainfo (int *,unsigned char*) ;
 void* rtw_zmalloc (int) ;

void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsigned short reason)
{
 struct cmd_obj *pcmd_obj;
 u8 *pevtcmd;
 u32 cmdsz;
 struct sta_info *psta;
 int mac_id;
 struct stadel_event *pdel_sta_evt;
 struct C2HEvent_Header *pc2h_evt_hdr;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
 if (pcmd_obj == ((void*)0)) {
  return;
 }

 cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
 pevtcmd = rtw_zmalloc(cmdsz);
 if (pevtcmd == ((void*)0)) {
  kfree(pcmd_obj);
  return;
 }

 INIT_LIST_HEAD(&pcmd_obj->list);

 pcmd_obj->cmdcode = GEN_CMD_CODE(_Set_MLME_EVT);
 pcmd_obj->cmdsz = cmdsz;
 pcmd_obj->parmbuf = pevtcmd;

 pcmd_obj->rsp = ((void*)0);
 pcmd_obj->rspsz = 0;

 pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 pc2h_evt_hdr->len = sizeof(struct stadel_event);
 pc2h_evt_hdr->ID = GEN_EVT_CODE(_DelSTA);
 pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);

 pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 memcpy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr, ETH_ALEN);
 memcpy((unsigned char *)(pdel_sta_evt->rsvd), (unsigned char *)(&reason), 2);


 psta = rtw_get_stainfo(&padapter->stapriv, MacAddr);
 if (psta)
  mac_id = (int)psta->mac_id;
 else
  mac_id = (-1);

 pdel_sta_evt->mac_id = mac_id;

 DBG_871X("report_del_sta_event: delete STA, mac_id =%d\n", mac_id);

 rtw_enqueue_cmd(pcmdpriv, pcmd_obj);

 return;
}
