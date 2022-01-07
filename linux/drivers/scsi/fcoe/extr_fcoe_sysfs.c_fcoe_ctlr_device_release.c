
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr_device {int dummy; } ;
struct device {int dummy; } ;


 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 int kfree (struct fcoe_ctlr_device*) ;

__attribute__((used)) static void fcoe_ctlr_device_release(struct device *dev)
{
 struct fcoe_ctlr_device *ctlr = dev_to_ctlr(dev);
 kfree(ctlr);
}
