
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_pcicore {struct ssb_device* dev; } ;
struct TYPE_2__ {scalar_t__ coreid; } ;
struct ssb_device {TYPE_1__ id; struct ssb_bus* bus; } ;
struct ssb_bus {scalar_t__ bustype; } ;


 scalar_t__ SSB_BUSTYPE_PCI ;
 scalar_t__ SSB_DEV_PCIE ;
 int SSB_INTVEC ;
 int ssb_pcicore_fix_sprom_core_index (struct ssb_pcicore*) ;
 int ssb_pcicore_serdes_workaround (struct ssb_pcicore*) ;
 int ssb_write32 (struct ssb_device*,int ,int ) ;

__attribute__((used)) static void ssb_pcicore_init_clientmode(struct ssb_pcicore *pc)
{
 struct ssb_device *pdev = pc->dev;
 struct ssb_bus *bus = pdev->bus;

 if (bus->bustype == SSB_BUSTYPE_PCI)
  ssb_pcicore_fix_sprom_core_index(pc);


 ssb_write32(pdev, SSB_INTVEC, 0);


 if (pc->dev->id.coreid == SSB_DEV_PCIE) {
  ssb_pcicore_serdes_workaround(pc);


 }
}
