
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {int fip_resp; int ctlr_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct fcoe_ctlr_device* dev_to_ctlr (struct device*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t store_ctlr_fip_resp(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct fcoe_ctlr_device *ctlr = dev_to_ctlr(dev);
 struct fcoe_ctlr *fip = fcoe_ctlr_device_priv(ctlr);

 mutex_lock(&fip->ctlr_mutex);
 if ((buf[1] == '\0') || ((buf[1] == '\n') && (buf[2] == '\0'))) {
  if (buf[0] == '1') {
   fip->fip_resp = 1;
   mutex_unlock(&fip->ctlr_mutex);
   return count;
  }
  if (buf[0] == '0') {
   fip->fip_resp = 0;
   mutex_unlock(&fip->ctlr_mutex);
   return count;
  }
 }
 mutex_unlock(&fip->ctlr_mutex);
 return -EINVAL;
}
