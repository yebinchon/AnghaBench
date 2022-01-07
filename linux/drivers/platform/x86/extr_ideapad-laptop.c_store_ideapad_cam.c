
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int handle; } ;


 size_t EINVAL ;
 size_t EIO ;
 int VPCCMD_W_CAMERA ;
 struct ideapad_private* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,int*) ;
 int write_ec_cmd (int ,int ,int) ;

__attribute__((used)) static ssize_t store_ideapad_cam(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 int ret, state;
 struct ideapad_private *priv = dev_get_drvdata(dev);

 if (!count)
  return 0;
 if (sscanf(buf, "%i", &state) != 1)
  return -EINVAL;
 ret = write_ec_cmd(priv->adev->handle, VPCCMD_W_CAMERA, state);
 if (ret < 0)
  return -EIO;
 return count;
}
