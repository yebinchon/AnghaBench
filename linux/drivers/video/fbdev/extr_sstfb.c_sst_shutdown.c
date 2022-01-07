
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_pll ) (struct fb_info*,struct pll_timing*,int ) ;} ;
struct sstfb_par {TYPE_1__ dac_sw; struct pci_dev* dev; } ;
struct pll_timing {int dummy; } ;
struct pci_dev {int dummy; } ;
struct fb_info {struct sstfb_par* par; } ;


 int DIS_VGA_PASSTHROUGH ;
 int EN_BLANKING ;
 int EN_DRAM_REFRESH ;
 int FBIINIT0 ;
 int FBIINIT1 ;
 int FBIINIT2 ;
 int FBI_RESET ;
 int FIFO_RESET ;
 int GFX_CLOCK ;
 int PCI_EN_INIT_WR ;
 int PCI_INIT_ENABLE ;
 int PCI_REMAP_DAC ;
 int PCI_VCLK_DISABLE ;
 int VIDEO_RESET ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int sst_calc_pll (int,int*,struct pll_timing*) ;
 int sst_set_bits (int ,int) ;
 int sst_unset_bits (int ,int) ;
 int sst_wait_idle () ;
 int stub1 (struct fb_info*,struct pll_timing*,int ) ;

__attribute__((used)) static void sst_shutdown(struct fb_info *info)
{
 struct sstfb_par *par = info->par;
 struct pci_dev *dev = par->dev;
 struct pll_timing gfx_timings;
 int Fout;


 pci_write_config_dword(dev, PCI_INIT_ENABLE, PCI_EN_INIT_WR);
 sst_set_bits(FBIINIT1, VIDEO_RESET | EN_BLANKING);
 sst_unset_bits(FBIINIT2, EN_DRAM_REFRESH);
 sst_set_bits(FBIINIT0, FBI_RESET | FIFO_RESET);
 sst_wait_idle();
 pci_write_config_dword(dev, PCI_INIT_ENABLE,
                        PCI_EN_INIT_WR | PCI_REMAP_DAC);

 sst_calc_pll(20000, &Fout, &gfx_timings);
 par->dac_sw.set_pll(info, &gfx_timings, GFX_CLOCK);

 pci_write_config_dword(dev, PCI_INIT_ENABLE,
                        PCI_EN_INIT_WR);
 sst_unset_bits(FBIINIT0, FBI_RESET | FIFO_RESET | DIS_VGA_PASSTHROUGH);
 pci_write_config_dword(dev, PCI_VCLK_DISABLE,0);


 pci_write_config_dword(dev, PCI_INIT_ENABLE, 0);

}
