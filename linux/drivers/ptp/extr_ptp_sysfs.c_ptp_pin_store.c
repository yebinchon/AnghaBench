
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptp_clock {int pincfg_mux; } ;
struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ERESTARTSYS ;
 struct ptp_clock* dev_get_drvdata (struct device*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int ptp_pin_name2index (struct ptp_clock*,int ) ;
 int ptp_set_pinfunc (struct ptp_clock*,int,unsigned int,unsigned int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static ssize_t ptp_pin_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct ptp_clock *ptp = dev_get_drvdata(dev);
 unsigned int func, chan;
 int cnt, err, index;

 cnt = sscanf(buf, "%u %u", &func, &chan);
 if (cnt != 2)
  return -EINVAL;

 index = ptp_pin_name2index(ptp, attr->attr.name);
 if (index < 0)
  return -EINVAL;

 if (mutex_lock_interruptible(&ptp->pincfg_mux))
  return -ERESTARTSYS;
 err = ptp_set_pinfunc(ptp, index, func, chan);
 mutex_unlock(&ptp->pincfg_mux);
 if (err)
  return err;

 return count;
}
