
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mvs_info {int flags; scalar_t__ id; int dev; int pdev; } ;


 int KERN_INFO ;
 int MVF_FLAG_SOC ;
 int PCR_LINK_STAT ;
 int PLS_LINK_SPD ;
 int PLS_LINK_SPD_OFFS ;
 int PLS_NEG_LINK_WD ;
 int PLS_NEG_LINK_WD_OFFS ;
 int dev_printk (int ,int ,char*,int,char const*) ;
 int pci_read_config_word (int ,int ,int*) ;

__attribute__((used)) static inline void mvs_show_pcie_usage(struct mvs_info *mvi)
{
 u16 link_stat, link_spd;
 const char *spd[] = {
  "UnKnown",
  "2.5",
  "5.0",
 };
 if (mvi->flags & MVF_FLAG_SOC || mvi->id > 0)
  return;

 pci_read_config_word(mvi->pdev, PCR_LINK_STAT, &link_stat);
 link_spd = (link_stat & PLS_LINK_SPD) >> PLS_LINK_SPD_OFFS;
 if (link_spd >= 3)
  link_spd = 0;
 dev_printk(KERN_INFO, mvi->dev,
  "mvsas: PCI-E x%u, Bandwidth Usage: %s Gbps\n",
        (link_stat & PLS_NEG_LINK_WD) >> PLS_NEG_LINK_WD_OFFS,
        spd[link_spd]);
}
