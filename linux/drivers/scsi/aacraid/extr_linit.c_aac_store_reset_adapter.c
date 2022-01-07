
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int IOP_HWSOFT_RESET ;
 int aac_reset_adapter (int ,int,int ) ;
 int capable (int ) ;
 int class_to_shost (struct device*) ;
 int shost_priv (int ) ;

__attribute__((used)) static ssize_t aac_store_reset_adapter(struct device *device,
           struct device_attribute *attr,
           const char *buf, size_t count)
{
 int retval = -EACCES;

 if (!capable(CAP_SYS_ADMIN))
  return retval;

 retval = aac_reset_adapter(shost_priv(class_to_shost(device)),
     buf[0] == '!', IOP_HWSOFT_RESET);
 if (retval >= 0)
  retval = count;

 return retval;
}
