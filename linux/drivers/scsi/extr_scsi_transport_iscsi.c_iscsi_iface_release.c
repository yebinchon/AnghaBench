
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct iscsi_iface {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 struct iscsi_iface* iscsi_dev_to_iface (struct device*) ;
 int kfree (struct iscsi_iface*) ;
 int put_device (struct device*) ;

__attribute__((used)) static void iscsi_iface_release(struct device *dev)
{
 struct iscsi_iface *iface = iscsi_dev_to_iface(dev);
 struct device *parent = iface->dev.parent;

 kfree(iface);
 put_device(parent);
}
