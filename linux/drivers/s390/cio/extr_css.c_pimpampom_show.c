
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcw {int pim; int pam; int pom; } ;
struct TYPE_2__ {struct pmcw pmcw; } ;
struct subchannel {TYPE_1__ schib; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static ssize_t pimpampom_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct subchannel *sch = to_subchannel(dev);
 struct pmcw *pmcw = &sch->schib.pmcw;

 return sprintf(buf, "%02x %02x %02x\n",
         pmcw->pim, pmcw->pam, pmcw->pom);
}
