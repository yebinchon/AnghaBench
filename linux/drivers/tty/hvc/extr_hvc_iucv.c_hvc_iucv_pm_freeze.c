
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_iucv_private {int dummy; } ;
struct device {int dummy; } ;


 struct hvc_iucv_private* dev_get_drvdata (struct device*) ;
 int hvc_iucv_hangup (struct hvc_iucv_private*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

__attribute__((used)) static int hvc_iucv_pm_freeze(struct device *dev)
{
 struct hvc_iucv_private *priv = dev_get_drvdata(dev);

 local_bh_disable();
 hvc_iucv_hangup(priv);
 local_bh_enable();

 return 0;
}
