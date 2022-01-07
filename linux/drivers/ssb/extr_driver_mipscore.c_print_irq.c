
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coreid; } ;
struct ssb_device {TYPE_1__ id; int dev; } ;


 int dev_dbg (int ,char*,int ,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*) ;

__attribute__((used)) static void print_irq(struct ssb_device *dev, unsigned int irq)
{
 static const char *irq_name[] = {"2(S)", "3", "4", "5", "6", "D", "I"};
 dev_dbg(dev->dev,
  "core 0x%04x, irq : %s%s %s%s %s%s %s%s %s%s %s%s %s%s\n",
  dev->id.coreid,
  irq_name[0], irq == 0 ? "*" : " ",
  irq_name[1], irq == 1 ? "*" : " ",
  irq_name[2], irq == 2 ? "*" : " ",
  irq_name[3], irq == 3 ? "*" : " ",
  irq_name[4], irq == 4 ? "*" : " ",
  irq_name[5], irq == 5 ? "*" : " ",
  irq_name[6], irq == 6 ? "*" : " ");
}
