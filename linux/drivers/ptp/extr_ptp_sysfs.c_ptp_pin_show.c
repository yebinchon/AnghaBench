
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ptp_clock {int pincfg_mux; TYPE_2__* info; } ;
struct TYPE_6__ {int name; } ;
struct device_attribute {TYPE_3__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* pin_config; } ;
struct TYPE_4__ {unsigned int func; unsigned int chan; } ;


 int EINVAL ;
 int ERESTARTSYS ;
 int PAGE_SIZE ;
 struct ptp_clock* dev_get_drvdata (struct device*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int ptp_pin_name2index (struct ptp_clock*,int ) ;
 int snprintf (char*,int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static ssize_t ptp_pin_show(struct device *dev, struct device_attribute *attr,
       char *page)
{
 struct ptp_clock *ptp = dev_get_drvdata(dev);
 unsigned int func, chan;
 int index;

 index = ptp_pin_name2index(ptp, attr->attr.name);
 if (index < 0)
  return -EINVAL;

 if (mutex_lock_interruptible(&ptp->pincfg_mux))
  return -ERESTARTSYS;

 func = ptp->info->pin_config[index].func;
 chan = ptp->info->pin_config[index].chan;

 mutex_unlock(&ptp->pincfg_mux);

 return snprintf(page, PAGE_SIZE, "%u %u\n", func, chan);
}
