
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct rt_dot11d_info {int* channel_map; int* max_tx_pwr_dbm_list; int state; int country_ie_buf; int country_ie_len; } ;
struct ieee80211_device {int dev; } ;
struct chnl_txpower_triple {size_t first_channel; int num_channels; int max_tx_pwr_dbm; } ;


 int DOT11D_STATE_LEARNED ;
 struct rt_dot11d_info* GET_DOT11D_INFO (struct ieee80211_device*) ;
 int MAX_CHANNEL_NUMBER ;
 int UPDATE_CIE_SRC (struct ieee80211_device*,size_t*) ;
 int memcpy (int ,size_t*,int ) ;
 int memset (int*,int,int) ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*,...) ;

void dot11d_update_country_ie(struct ieee80211_device *dev, u8 *pTaddr,
       u16 CoutryIeLen, u8 *pCoutryIe)
{
 struct rt_dot11d_info *dot11d_info = GET_DOT11D_INFO(dev);
 u8 i, j, NumTriples, MaxChnlNum;
 struct chnl_txpower_triple *pTriple;

 memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
 memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 MaxChnlNum = 0;
 NumTriples = (CoutryIeLen - 3) / 3;
 pTriple = (struct chnl_txpower_triple *)(pCoutryIe + 3);
 for (i = 0; i < NumTriples; i++) {
  if (MaxChnlNum >= pTriple->first_channel) {



   netdev_err(dev->dev, "dot11d_update_country_ie(): Invalid country IE, skip it........1\n");
   return;
  }
  if (MAX_CHANNEL_NUMBER < (pTriple->first_channel + pTriple->num_channels)) {



   netdev_err(dev->dev, "dot11d_update_country_ie(): Invalid country IE, skip it........2\n");
   return;
  }

  for (j = 0; j < pTriple->num_channels; j++) {
   dot11d_info->channel_map[pTriple->first_channel + j] = 1;
   dot11d_info->max_tx_pwr_dbm_list[pTriple->first_channel + j] = pTriple->max_tx_pwr_dbm;
   MaxChnlNum = pTriple->first_channel + j;
  }

  pTriple = (struct chnl_txpower_triple *)((u8 *)pTriple + 3);
 }
 netdev_info(dev->dev, "Channel List:");
 for (i = 1; i <= MAX_CHANNEL_NUMBER; i++)
  if (dot11d_info->channel_map[i] > 0)
   netdev_info(dev->dev, " %d", i);
 netdev_info(dev->dev, "\n");

 UPDATE_CIE_SRC(dev, pTaddr);

 dot11d_info->country_ie_len = CoutryIeLen;
 memcpy(dot11d_info->country_ie_buf, pCoutryIe, CoutryIeLen);
 dot11d_info->state = DOT11D_STATE_LEARNED;
}
