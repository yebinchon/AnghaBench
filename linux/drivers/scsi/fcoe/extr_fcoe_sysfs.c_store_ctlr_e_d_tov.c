
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_ctlr_device {scalar_t__ enabled; } ;
struct fcoe_ctlr {TYPE_1__* lp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int e_d_tov; } ;


 int EBUSY ;
 int ENOTSUPP ;
 scalar_t__ FCOE_CTLR_DISABLED ;
 scalar_t__ FCOE_CTLR_ENABLED ;
 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 int fcoe_ctlr_var_store (int *,char const*,size_t) ;

__attribute__((used)) static ssize_t store_ctlr_e_d_tov(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct fcoe_ctlr_device *ctlr_dev = dev_to_ctlr(dev);
 struct fcoe_ctlr *ctlr = fcoe_ctlr_device_priv(ctlr_dev);

 if (ctlr_dev->enabled == FCOE_CTLR_ENABLED)
  return -EBUSY;
 if (ctlr_dev->enabled == FCOE_CTLR_DISABLED)
  return fcoe_ctlr_var_store(&ctlr->lp->e_d_tov, buf, count);
 return -ENOTSUPP;
}
