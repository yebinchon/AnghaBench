
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


 int HA_FNLOCK_BIT ;
 struct ideapad_private* dev_get_drvdata (struct device*) ;
 int read_method_int (int ,char*,int*) ;
 int sprintf (char*,char*,...) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static ssize_t fn_lock_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct ideapad_private *priv = dev_get_drvdata(dev);
 unsigned long result;
 int hals;
 int fail = read_method_int(priv->adev->handle, "HALS", &hals);

 if (fail)
  return sprintf(buf, "-1\n");

 result = hals;
 return sprintf(buf, "%u\n", test_bit(HA_FNLOCK_BIT, &result));
}
