
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct registry_priv {int accept_addba_req; } ;
struct mlme_priv {int ChannelPlan; } ;
struct mlme_ext_info {int accept_addba_req; } ;
struct mlme_ext_priv {int mlmeext_init; int active_keep_alive_check; int fixed_chan; int chan_scan_time; scalar_t__ last_scan_time; int channel_list; int max_chan_nums; int channel_set; struct adapter* padapter; struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_priv mlmepriv; struct mlme_ext_priv mlmeextpriv; struct registry_priv registrypriv; } ;


 int SURVEY_TO ;
 int init_channel_list (struct adapter*,int ,int ,int *) ;
 int init_channel_set (struct adapter*,int ,int ) ;
 int init_mlme_ap_info (struct adapter*) ;
 int init_mlme_ext_priv_value (struct adapter*) ;
 int init_mlme_ext_timer (struct adapter*) ;

void init_mlme_ext_priv(struct adapter *padapter)
{
 struct registry_priv *pregistrypriv = &padapter->registrypriv;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

 pmlmeext->padapter = padapter;



 init_mlme_ext_priv_value(padapter);
 pmlmeinfo->accept_addba_req = pregistrypriv->accept_addba_req;

 init_mlme_ext_timer(padapter);

 init_mlme_ap_info(padapter);

 pmlmeext->max_chan_nums = init_channel_set(padapter, pmlmepriv->ChannelPlan, pmlmeext->channel_set);
 init_channel_list(padapter, pmlmeext->channel_set, pmlmeext->max_chan_nums, &pmlmeext->channel_list);
 pmlmeext->last_scan_time = 0;
 pmlmeext->chan_scan_time = SURVEY_TO;
 pmlmeext->mlmeext_init = 1;
 pmlmeext->active_keep_alive_check = 1;




}
