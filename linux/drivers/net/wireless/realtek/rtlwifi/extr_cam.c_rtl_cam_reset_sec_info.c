
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_defaultkey; int * pairwise_key; int key_len; int key_buf; void* group_enc_algorithm; void* pairwise_enc_algorithm; } ;
struct rtl_priv {TYPE_1__ sec; } ;
struct ieee80211_hw {int dummy; } ;


 int KEY_BUF_SIZE ;
 int MAX_KEY_LEN ;
 void* NO_ENCRYPTION ;
 int memset (int ,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_cam_reset_sec_info(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtlpriv->sec.use_defaultkey = 0;
 rtlpriv->sec.pairwise_enc_algorithm = NO_ENCRYPTION;
 rtlpriv->sec.group_enc_algorithm = NO_ENCRYPTION;
 memset(rtlpriv->sec.key_buf, 0, KEY_BUF_SIZE * MAX_KEY_LEN);
 memset(rtlpriv->sec.key_len, 0, KEY_BUF_SIZE);
 rtlpriv->sec.pairwise_key = ((void*)0);
}
