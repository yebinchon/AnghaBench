
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf_device {int state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int FCOE_FCF_STATE_MAX_NAMELEN ;
 struct fcoe_fcf_device* dev_to_fcf (struct device*) ;
 char* get_fcoe_fcf_state_name (int ) ;
 int snprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t show_fcf_state(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct fcoe_fcf_device *fcf = dev_to_fcf(dev);
 const char *name;
 name = get_fcoe_fcf_state_name(fcf->state);
 if (!name)
  return -EINVAL;
 return snprintf(buf, FCOE_FCF_STATE_MAX_NAMELEN, "%s\n", name);
}
