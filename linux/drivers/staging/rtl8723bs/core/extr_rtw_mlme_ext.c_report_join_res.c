
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wlan_bssid_ex {int dummy; } ;
struct mlme_ext_info {int network; } ;
struct mlme_ext_priv {int event_seq; struct mlme_ext_info mlmext_info; } ;
struct TYPE_2__ {int join_res; int aid; int network; } ;
struct joinbss_event {TYPE_1__ network; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int * rsp; int * parmbuf; int cmdcode; int list; } ;
struct adapter {struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int seq; int ID; } ;


 int DBG_871X (char*,int) ;
 int GEN_CMD_CODE (int ) ;
 int GEN_EVT_CODE (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int _JoinBss ;
 int _Set_MLME_EVT ;
 int atomic_inc_return (int *) ;
 int kfree (struct cmd_obj*) ;
 int memcpy (unsigned char*,int *,int) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;
 int rtw_joinbss_event_prehandle (struct adapter*,int *) ;
 void* rtw_zmalloc (int) ;

void report_join_res(struct adapter *padapter, int res)
{
 struct cmd_obj *pcmd_obj;
 u8 *pevtcmd;
 u32 cmdsz;
 struct joinbss_event *pjoinbss_evt;
 struct C2HEvent_Header *pc2h_evt_hdr;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
 if (!pcmd_obj)
  return;

 cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
 pevtcmd = rtw_zmalloc(cmdsz);
 if (!pevtcmd) {
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
 pc2h_evt_hdr->len = sizeof(struct joinbss_event);
 pc2h_evt_hdr->ID = GEN_EVT_CODE(_JoinBss);
 pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);

 pjoinbss_evt = (struct joinbss_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 memcpy((unsigned char *)(&(pjoinbss_evt->network.network)), &(pmlmeinfo->network), sizeof(struct wlan_bssid_ex));
 pjoinbss_evt->network.join_res = pjoinbss_evt->network.aid = res;

 DBG_871X("report_join_res(%d)\n", res);


 rtw_joinbss_event_prehandle(padapter, (u8 *)&pjoinbss_evt->network);


 rtw_enqueue_cmd(pcmdpriv, pcmd_obj);

 return;

}
