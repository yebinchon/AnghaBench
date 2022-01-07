
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {TYPE_1__* lp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int e_d_tov; } ;


 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_ctlr_e_d_tov(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct fcoe_ctlr_device *ctlr_dev = dev_to_ctlr(dev);
 struct fcoe_ctlr *ctlr = fcoe_ctlr_device_priv(ctlr_dev);

 return sprintf(buf, "%d\n", ctlr->lp->e_d_tov);
}
