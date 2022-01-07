
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fwnode_endpoint {int dummy; } ;
struct TYPE_2__ {int fwnode; } ;
struct v4l2_async_subdev {TYPE_1__ match; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ fwnode_device_is_available (int ) ;

__attribute__((used)) static int imx7_csi_parse_endpoint(struct device *dev,
       struct v4l2_fwnode_endpoint *vep,
       struct v4l2_async_subdev *asd)
{
 return fwnode_device_is_available(asd->match.fwnode) ? 0 : -EINVAL;
}
