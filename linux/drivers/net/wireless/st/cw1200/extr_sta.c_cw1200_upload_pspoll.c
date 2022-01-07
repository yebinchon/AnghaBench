
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_template_frame {int rate; int skb; int frame_type; } ;
struct cw1200_common {int vif; int hw; } ;


 int ENOMEM ;
 int WSM_FRAME_TYPE_PS_POLL ;
 int dev_kfree_skb (int ) ;
 int ieee80211_pspoll_get (int ,int ) ;
 int wsm_set_template_frame (struct cw1200_common*,struct wsm_template_frame*) ;

__attribute__((used)) static int cw1200_upload_pspoll(struct cw1200_common *priv)
{
 int ret = 0;
 struct wsm_template_frame frame = {
  .frame_type = WSM_FRAME_TYPE_PS_POLL,
  .rate = 0xFF,
 };


 frame.skb = ieee80211_pspoll_get(priv->hw, priv->vif);
 if (!frame.skb)
  return -ENOMEM;

 ret = wsm_set_template_frame(priv, &frame);

 dev_kfree_skb(frame.skb);

 return ret;
}
