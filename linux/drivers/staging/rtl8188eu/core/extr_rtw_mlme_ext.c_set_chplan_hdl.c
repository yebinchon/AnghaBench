
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_ext_priv {int channel_list; int max_chan_nums; int channel_set; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
struct SetChannelPlan_param {int channel_plan; } ;


 int H2C_PARAMETERS_ERROR ;
 int H2C_SUCCESS ;
 int init_channel_list (struct adapter*,int ,int ,int *) ;
 int init_channel_set (struct adapter*,int ,int ) ;

u8 set_chplan_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 struct SetChannelPlan_param *setChannelPlan_param;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 if (!pbuf)
  return H2C_PARAMETERS_ERROR;

 setChannelPlan_param = (struct SetChannelPlan_param *)pbuf;

 pmlmeext->max_chan_nums = init_channel_set(padapter, setChannelPlan_param->channel_plan, pmlmeext->channel_set);
 init_channel_list(padapter, pmlmeext->channel_set, pmlmeext->max_chan_nums, &pmlmeext->channel_list);

 return H2C_SUCCESS;
}
