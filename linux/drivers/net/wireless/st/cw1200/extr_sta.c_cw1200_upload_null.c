
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_template_frame {int rate; int skb; int frame_type; } ;
struct cw1200_common {int vif; int hw; } ;


 int ENOMEM ;
 int WSM_FRAME_TYPE_NULL ;
 int dev_kfree_skb (int ) ;
 int ieee80211_nullfunc_get (int ,int ,int) ;
 int wsm_set_template_frame (struct cw1200_common*,struct wsm_template_frame*) ;

__attribute__((used)) static int cw1200_upload_null(struct cw1200_common *priv)
{
 int ret = 0;
 struct wsm_template_frame frame = {
  .frame_type = WSM_FRAME_TYPE_NULL,
  .rate = 0xFF,
 };

 frame.skb = ieee80211_nullfunc_get(priv->hw, priv->vif, 0);
 if (!frame.skb)
  return -ENOMEM;

 ret = wsm_set_template_frame(priv, &frame);

 dev_kfree_skb(frame.skb);

 return ret;
}
