
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_config {int flags; int type; } ;


 int V4L2_MBUS_CSI2_2_LANE ;
 int V4L2_MBUS_CSI2_CHANNEL_0 ;
 int V4L2_MBUS_CSI2_CONTINUOUS_CLOCK ;
 int V4L2_MBUS_CSI2_DPHY ;

__attribute__((used)) static int imx074_g_mbus_config(struct v4l2_subdev *sd,
    struct v4l2_mbus_config *cfg)
{
 cfg->type = V4L2_MBUS_CSI2_DPHY;
 cfg->flags = V4L2_MBUS_CSI2_2_LANE |
  V4L2_MBUS_CSI2_CHANNEL_0 |
  V4L2_MBUS_CSI2_CONTINUOUS_CLOCK;

 return 0;
}
