
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


 int BMCMD_CONSERVATION_OFF ;
 int BMCMD_CONSERVATION_ON ;
 int EIO ;
 struct ideapad_private* dev_get_drvdata (struct device*) ;
 int kstrtobool (char const*,int*) ;
 int method_int1 (int ,char*,int ) ;

__attribute__((used)) static ssize_t conservation_mode_store(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct ideapad_private *priv = dev_get_drvdata(dev);
 bool state;
 int ret;

 ret = kstrtobool(buf, &state);
 if (ret)
  return ret;

 ret = method_int1(priv->adev->handle, "SBMC", state ?
           BMCMD_CONSERVATION_ON :
           BMCMD_CONSERVATION_OFF);
 if (ret < 0)
  return -EIO;
 return count;
}
