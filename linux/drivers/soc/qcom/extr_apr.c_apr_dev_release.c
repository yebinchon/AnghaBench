
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct apr_device {int dummy; } ;


 int kfree (struct apr_device*) ;
 struct apr_device* to_apr_device (struct device*) ;

__attribute__((used)) static void apr_dev_release(struct device *dev)
{
 struct apr_device *adev = to_apr_device(dev);

 kfree(adev);
}
