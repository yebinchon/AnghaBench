
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int handle; } ;


 int VPCCMD_R_CAMERA ;
 struct ideapad_private* dev_get_drvdata (struct device*) ;
 scalar_t__ read_ec_data (int ,int ,unsigned long*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t show_ideapad_cam(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 unsigned long result;
 struct ideapad_private *priv = dev_get_drvdata(dev);

 if (read_ec_data(priv->adev->handle, VPCCMD_R_CAMERA, &result))
  return sprintf(buf, "-1\n");
 return sprintf(buf, "%lu\n", result);
}
