
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fcoe_ctlr_device {int enabled; TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* set_fcoe_ctlr_enabled ) (struct fcoe_ctlr_device*) ;} ;


 size_t EINVAL ;
 size_t ENOTSUPP ;



 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 int stub1 (struct fcoe_ctlr_device*) ;

__attribute__((used)) static ssize_t store_ctlr_enabled(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct fcoe_ctlr_device *ctlr = dev_to_ctlr(dev);
 bool enabled;
 int rc;

 if (*buf == '1')
  enabled = 1;
 else if (*buf == '0')
  enabled = 0;
 else
  return -EINVAL;

 switch (ctlr->enabled) {
 case 129:
  if (enabled)
   return count;
  ctlr->enabled = 130;
  break;
 case 130:
  if (!enabled)
   return count;
  ctlr->enabled = 129;
  break;
 case 128:
  return -ENOTSUPP;
 };

 rc = ctlr->f->set_fcoe_ctlr_enabled(ctlr);
 if (rc)
  return rc;

 return count;
}
