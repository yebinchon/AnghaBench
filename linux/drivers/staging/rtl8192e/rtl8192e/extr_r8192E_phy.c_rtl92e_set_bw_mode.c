
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {int SetBWModeInProgress; int CurrentChannelBW; int nCur40MhzPrimeSC; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
typedef enum ht_extchnl_offset { ____Placeholder_ht_extchnl_offset } ht_extchnl_offset ;
typedef enum ht_channel_width { ____Placeholder_ht_channel_width } ht_channel_width ;
struct TYPE_2__ {int atm_swbw; } ;


 int HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 int HAL_PRIME_CHNL_OFFSET_LOWER ;
 int HAL_PRIME_CHNL_OFFSET_UPPER ;
 int HT_EXTCHNL_OFFSET_LOWER ;
 int HT_EXTCHNL_OFFSET_UPPER ;
 int _rtl92e_set_bw_mode_work_item (struct net_device*) ;
 int atomic_inc (int *) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_set_bw_mode(struct net_device *dev, enum ht_channel_width Bandwidth,
   enum ht_extchnl_offset Offset)
{
 struct r8192_priv *priv = rtllib_priv(dev);


 if (priv->SetBWModeInProgress)
  return;

 atomic_inc(&(priv->rtllib->atm_swbw));
 priv->SetBWModeInProgress = 1;

 priv->CurrentChannelBW = Bandwidth;

 if (Offset == HT_EXTCHNL_OFFSET_LOWER)
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_UPPER;
 else if (Offset == HT_EXTCHNL_OFFSET_UPPER)
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_LOWER;
 else
  priv->nCur40MhzPrimeSC = HAL_PRIME_CHNL_OFFSET_DONT_CARE;

 _rtl92e_set_bw_mode_work_item(dev);

}
