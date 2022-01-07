
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct regulatory_request {int initiator; } ;
struct mlme_ext_priv {int channel_list; int max_chan_nums; int channel_set; } ;
struct adapter {TYPE_1__* rtw_wdev; struct mlme_ext_priv mlmeextpriv; } ;
struct SetChannelPlan_param {int channel_plan; } ;
struct TYPE_2__ {scalar_t__ wiphy; } ;


 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;
 int NL80211_REGDOM_SET_BY_DRIVER ;
 int init_channel_list (struct adapter*,int ,int ,int *) ;
 int init_channel_set (struct adapter*,int ,int ) ;
 int rtw_reg_notifier (scalar_t__,struct regulatory_request*) ;

u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 struct SetChannelPlan_param *setChannelPlan_param;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 if (!pbuf)
  return H2C_PARAMETERS_ERROR;

 setChannelPlan_param = (struct SetChannelPlan_param *)pbuf;

 pmlmeext->max_chan_nums = init_channel_set(padapter, setChannelPlan_param->channel_plan, pmlmeext->channel_set);
 init_channel_list(padapter, pmlmeext->channel_set, pmlmeext->max_chan_nums, &pmlmeext->channel_list);

 if ((padapter->rtw_wdev != ((void*)0)) && (padapter->rtw_wdev->wiphy)) {
  struct regulatory_request request;
  request.initiator = NL80211_REGDOM_SET_BY_DRIVER;
  rtw_reg_notifier(padapter->rtw_wdev->wiphy, &request);
 }

 return H2C_SUCCESS;
}
