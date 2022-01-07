
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {int pad; int target; int flags; int which; struct v4l2_rect r; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct v4l2_fwnode_endpoint {int bus_type; } ;
struct csi_priv {scalar_t__ stream_count; int lock; struct v4l2_rect compose; struct v4l2_rect crop; int sd; } ;


 int CSI_NUM_PADS ;
 int CSI_SINK_PAD ;
 int EBUSY ;
 int EINVAL ;
 int V4L2_SEL_FLAG_KEEP_CONFIG ;


 int V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_rect* __csi_get_compose (struct csi_priv*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_rect* __csi_get_crop (struct csi_priv*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* __csi_get_fmt (struct csi_priv*,struct v4l2_subdev_pad_config*,int,int ) ;
 int csi_get_upstream_endpoint (struct csi_priv*,struct v4l2_fwnode_endpoint*) ;
 int csi_set_scale (int *,int ,int) ;
 int csi_try_crop (struct csi_priv*,struct v4l2_rect*,struct v4l2_subdev_pad_config*,struct v4l2_mbus_framefmt*,struct v4l2_fwnode_endpoint*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_err (int *,char*) ;
 struct csi_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int csi_set_selection(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_selection *sel)
{
 struct csi_priv *priv = v4l2_get_subdevdata(sd);
 struct v4l2_fwnode_endpoint upstream_ep = { .bus_type = 0 };
 struct v4l2_mbus_framefmt *infmt;
 struct v4l2_rect *crop, *compose;
 int pad, ret;

 if (sel->pad != CSI_SINK_PAD)
  return -EINVAL;

 ret = csi_get_upstream_endpoint(priv, &upstream_ep);
 if (ret) {
  v4l2_err(&priv->sd, "failed to find upstream endpoint\n");
  return ret;
 }

 mutex_lock(&priv->lock);

 if (priv->stream_count > 0) {
  ret = -EBUSY;
  goto out;
 }

 infmt = __csi_get_fmt(priv, cfg, CSI_SINK_PAD, sel->which);
 crop = __csi_get_crop(priv, cfg, sel->which);
 compose = __csi_get_compose(priv, cfg, sel->which);

 switch (sel->target) {
 case 128:





  if (sel->flags & V4L2_SEL_FLAG_KEEP_CONFIG) {
   sel->r = priv->crop;
   if (sel->which == V4L2_SUBDEV_FORMAT_TRY)
    *crop = sel->r;
   goto out;
  }

  csi_try_crop(priv, &sel->r, cfg, infmt, &upstream_ep);

  *crop = sel->r;


  compose->width = crop->width;
  compose->height = crop->height;
  break;
 case 129:





  if (sel->flags & V4L2_SEL_FLAG_KEEP_CONFIG) {
   sel->r = priv->compose;
   if (sel->which == V4L2_SUBDEV_FORMAT_TRY)
    *compose = sel->r;
   goto out;
  }

  sel->r.left = 0;
  sel->r.top = 0;
  ret = csi_set_scale(&sel->r.width, crop->width, sel->flags);
  if (ret)
   goto out;
  ret = csi_set_scale(&sel->r.height, crop->height, sel->flags);
  if (ret)
   goto out;

  *compose = sel->r;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }


 for (pad = CSI_SINK_PAD + 1; pad < CSI_NUM_PADS; pad++) {
  struct v4l2_mbus_framefmt *outfmt;

  outfmt = __csi_get_fmt(priv, cfg, pad, sel->which);
  outfmt->width = compose->width;
  outfmt->height = compose->height;
 }

out:
 mutex_unlock(&priv->lock);
 return ret;
}
