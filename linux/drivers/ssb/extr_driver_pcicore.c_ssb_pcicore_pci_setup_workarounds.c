
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_pcicore {struct ssb_device* dev; } ;
struct TYPE_2__ {int revision; } ;
struct ssb_device {TYPE_1__ id; struct ssb_bus* bus; } ;
struct ssb_bus {int dummy; } ;


 int SSB_IMCFGLO ;
 int SSB_IMCFGLO_REQTO ;
 int SSB_IMCFGLO_REQTO_SHIFT ;
 int SSB_IMCFGLO_SERTO ;
 int SSB_PCICORE_SBTOPCI2 ;
 int SSB_PCICORE_SBTOPCI_BURST ;
 int SSB_PCICORE_SBTOPCI_MRM ;
 int SSB_PCICORE_SBTOPCI_PREF ;
 int pcicore_read32 (struct ssb_pcicore*,int ) ;
 int pcicore_write32 (struct ssb_pcicore*,int ,int) ;
 int ssb_commit_settings (struct ssb_bus*) ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_write32 (struct ssb_device*,int ,int) ;

__attribute__((used)) static void ssb_pcicore_pci_setup_workarounds(struct ssb_pcicore *pc)
{
 struct ssb_device *pdev = pc->dev;
 struct ssb_bus *bus = pdev->bus;
 u32 tmp;

 tmp = pcicore_read32(pc, SSB_PCICORE_SBTOPCI2);
 tmp |= SSB_PCICORE_SBTOPCI_PREF;
 tmp |= SSB_PCICORE_SBTOPCI_BURST;
 pcicore_write32(pc, SSB_PCICORE_SBTOPCI2, tmp);

 if (pdev->id.revision < 5) {
  tmp = ssb_read32(pdev, SSB_IMCFGLO);
  tmp &= ~SSB_IMCFGLO_SERTO;
  tmp |= 2;
  tmp &= ~SSB_IMCFGLO_REQTO;
  tmp |= 3 << SSB_IMCFGLO_REQTO_SHIFT;
  ssb_write32(pdev, SSB_IMCFGLO, tmp);
  ssb_commit_settings(bus);
 } else if (pdev->id.revision >= 11) {
  tmp = pcicore_read32(pc, SSB_PCICORE_SBTOPCI2);
  tmp |= SSB_PCICORE_SBTOPCI_MRM;
  pcicore_write32(pc, SSB_PCICORE_SBTOPCI2, tmp);
 }
}
