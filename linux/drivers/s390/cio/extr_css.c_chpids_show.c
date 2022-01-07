
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chsc_ssd_info {int path_mask; TYPE_1__* chpid; } ;
struct subchannel {struct chsc_ssd_info ssd_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int id; } ;


 int sprintf (char*,char*,...) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static ssize_t chpids_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct subchannel *sch = to_subchannel(dev);
 struct chsc_ssd_info *ssd = &sch->ssd_info;
 ssize_t ret = 0;
 int mask;
 int chp;

 for (chp = 0; chp < 8; chp++) {
  mask = 0x80 >> chp;
  if (ssd->path_mask & mask)
   ret += sprintf(buf + ret, "%02x ", ssd->chpid[chp].id);
  else
   ret += sprintf(buf + ret, "00 ");
 }
 ret += sprintf(buf + ret, "\n");
 return ret;
}
