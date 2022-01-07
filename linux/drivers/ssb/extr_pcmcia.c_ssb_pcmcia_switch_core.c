
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coreid; } ;
struct ssb_device {int core_index; TYPE_1__ id; } ;
struct ssb_bus {struct ssb_device* mapped_device; } ;


 int pr_info (char*,int ,int ) ;
 int ssb_core_name (int ) ;
 int ssb_pcmcia_switch_coreidx (struct ssb_bus*,int ) ;

__attribute__((used)) static int ssb_pcmcia_switch_core(struct ssb_bus *bus, struct ssb_device *dev)
{
 int err;






 err = ssb_pcmcia_switch_coreidx(bus, dev->core_index);
 if (!err)
  bus->mapped_device = dev;

 return err;
}
