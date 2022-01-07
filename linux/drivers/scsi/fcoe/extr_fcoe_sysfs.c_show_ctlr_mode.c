
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr_device {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int FCOE_MAX_MODENAME_LEN ;
 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 char* get_fcoe_ctlr_mode_name (int ) ;
 int snprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t show_ctlr_mode(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct fcoe_ctlr_device *ctlr = dev_to_ctlr(dev);
 const char *name;

 name = get_fcoe_ctlr_mode_name(ctlr->mode);
 if (!name)
  return -EINVAL;
 return snprintf(buf, FCOE_MAX_MODENAME_LEN,
   "%s\n", name);
}
