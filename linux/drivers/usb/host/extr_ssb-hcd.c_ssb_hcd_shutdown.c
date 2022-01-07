
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {int dummy; } ;


 int ssb_device_disable (struct ssb_device*,int ) ;

__attribute__((used)) static void ssb_hcd_shutdown(struct ssb_device *dev)
{
 ssb_device_disable(dev, 0);
}
