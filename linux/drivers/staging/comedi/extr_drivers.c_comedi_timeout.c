
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int COMEDI_TIMEOUT_MS ;
 int EBUSY ;
 int ETIMEDOUT ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int comedi_timeout(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     int (*cb)(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned long context),
     unsigned long context)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(COMEDI_TIMEOUT_MS);
 int ret;

 while (time_before(jiffies, timeout)) {
  ret = cb(dev, s, insn, context);
  if (ret != -EBUSY)
   return ret;
  cpu_relax();
 }
 return -ETIMEDOUT;
}
