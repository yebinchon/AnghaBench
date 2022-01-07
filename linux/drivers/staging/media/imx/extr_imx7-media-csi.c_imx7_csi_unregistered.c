
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct imx7_csi {int vdev; } ;


 int imx_media_capture_device_unregister (int ) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void imx7_csi_unregistered(struct v4l2_subdev *sd)
{
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);

 imx_media_capture_device_unregister(csi->vdev);
}
