
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct surveydone_event {int bss_cnt; } ;
struct TYPE_2__ {int bss_cnt; } ;
struct mlme_ext_priv {TYPE_1__ sitesurvey_res; int event_seq; } ;
struct cmd_priv {int dummy; } ;
struct cmd_obj {int cmdsz; scalar_t__ rspsz; int * rsp; int * parmbuf; int cmdcode; int list; } ;
struct adapter {struct cmd_priv cmdpriv; struct mlme_ext_priv mlmeextpriv; } ;
struct C2HEvent_Header {int len; int seq; int ID; } ;


 int DBG_88E (char*,int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int _Set_MLME_EVT_CMD_ ;
 int _SurveyDone_EVT_ ;
 int atomic_inc_return (int *) ;
 int kfree (struct cmd_obj*) ;
 void* kzalloc (int,int ) ;
 int rtw_enqueue_cmd (struct cmd_priv*,struct cmd_obj*) ;

void report_surveydone_event(struct adapter *padapter)
{
 struct cmd_obj *pcmd_obj;
 u8 *pevtcmd;
 u32 cmdsz;
 struct surveydone_event *psurveydone_evt;
 struct C2HEvent_Header *pc2h_evt_hdr;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct cmd_priv *pcmdpriv = &padapter->cmdpriv;

 pcmd_obj = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
 if (!pcmd_obj)
  return;

 cmdsz = sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header);
 pevtcmd = kzalloc(cmdsz, GFP_KERNEL);
 if (!pevtcmd) {
  kfree(pcmd_obj);
  return;
 }

 INIT_LIST_HEAD(&pcmd_obj->list);

 pcmd_obj->cmdcode = _Set_MLME_EVT_CMD_;
 pcmd_obj->cmdsz = cmdsz;
 pcmd_obj->parmbuf = pevtcmd;

 pcmd_obj->rsp = ((void*)0);
 pcmd_obj->rspsz = 0;

 pc2h_evt_hdr = (struct C2HEvent_Header *)(pevtcmd);
 pc2h_evt_hdr->len = sizeof(struct surveydone_event);
 pc2h_evt_hdr->ID = _SurveyDone_EVT_;
 pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);

 psurveydone_evt = (struct surveydone_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 psurveydone_evt->bss_cnt = pmlmeext->sitesurvey_res.bss_cnt;

 DBG_88E("survey done event(%x)\n", psurveydone_evt->bss_cnt);

 rtw_enqueue_cmd(pcmdpriv, pcmd_obj);
}
