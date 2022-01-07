
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {int lock; } ;
struct v4l2_subdev {int entity; } ;


 int media_entity_cleanup (int *) ;
 int mutex_destroy (int *) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*) ;

int imx_media_vdic_unregister(struct v4l2_subdev *sd)
{
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);

 v4l2_info(sd, "Removing\n");

 v4l2_device_unregister_subdev(sd);
 mutex_destroy(&priv->lock);
 media_entity_cleanup(&sd->entity);

 return 0;
}
