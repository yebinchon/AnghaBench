
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val32 ;
typedef scalar_t__ u32 ;
struct ieee80211_hw {struct cw1200_common* priv; } ;
struct cw1200_common {scalar_t__ mode; scalar_t__ rts_threshold; } ;
typedef scalar_t__ __le32 ;


 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int WSM_MIB_ID_DOT11_RTS_THRESHOLD ;
 scalar_t__ __cpu_to_le32 (scalar_t__) ;
 int pr_debug (char*,scalar_t__) ;
 int wsm_write_mib (struct cw1200_common*,int ,scalar_t__*,int) ;

int cw1200_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 int ret = 0;
 __le32 val32;
 struct cw1200_common *priv = hw->priv;

 if (priv->mode == NL80211_IFTYPE_UNSPECIFIED)
  return 0;

 if (value != (u32) -1)
  val32 = __cpu_to_le32(value);
 else
  val32 = 0;

 if (priv->rts_threshold == value)
  goto out;

 pr_debug("[STA] Setting RTS threshold: %d\n",
   priv->rts_threshold);


 ret = wsm_write_mib(priv, WSM_MIB_ID_DOT11_RTS_THRESHOLD,
       &val32, sizeof(val32));
 if (!ret)
  priv->rts_threshold = value;


out:
 return ret;
}
