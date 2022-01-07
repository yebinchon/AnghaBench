
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {scalar_t__ fip_resp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_ctlr_fip_resp(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct fcoe_ctlr_device *ctlr = dev_to_ctlr(dev);
 struct fcoe_ctlr *fip = fcoe_ctlr_device_priv(ctlr);

 return sprintf(buf, "%d\n", fip->fip_resp ? 1 : 0);
}
