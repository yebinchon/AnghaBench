
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int pll_max; int mclk; int xclk; int ecp_max; } ;
struct atyfb_par {scalar_t__ pci_id; void* features; TYPE_1__ pll_limits; } ;
struct TYPE_5__ {scalar_t__ pci_id; char* name; int pll; int mclk; int xclk; int ecp_max; void* features; } ;


 scalar_t__ ARRAY_SIZE (TYPE_2__*) ;
 void* ATI_CHIP_264GTB ;
 void* ATI_CHIP_264VT ;
 void* ATI_CHIP_264VT3 ;
 void* ATI_CHIP_264VTB ;
 int CFG_CHIP_REV ;
 int CFG_CHIP_TYPE ;
 int CNFG_CHIP_ID ;
 int ENODEV ;
 void* M64F_MAGIC_POSTDIV ;




 int PRINTKI (char*,char const*,int,int) ;
 TYPE_2__* aty_chips ;
 int aty_ld_le32 (int ,struct atyfb_par*) ;

__attribute__((used)) static int correct_chipset(struct atyfb_par *par)
{
 u8 rev;
 u16 type;
 u32 chip_id;
 const char *name;
 int i;

 for (i = (int)ARRAY_SIZE(aty_chips) - 1; i >= 0; i--)
  if (par->pci_id == aty_chips[i].pci_id)
   break;

 if (i < 0)
  return -ENODEV;

 name = aty_chips[i].name;
 par->pll_limits.pll_max = aty_chips[i].pll;
 par->pll_limits.mclk = aty_chips[i].mclk;
 par->pll_limits.xclk = aty_chips[i].xclk;
 par->pll_limits.ecp_max = aty_chips[i].ecp_max;
 par->features = aty_chips[i].features;

 chip_id = aty_ld_le32(CNFG_CHIP_ID, par);
 type = chip_id & CFG_CHIP_TYPE;
 rev = (chip_id & CFG_CHIP_REV) >> 24;

 switch (par->pci_id) {
 }

 PRINTKI("%s [0x%04x rev 0x%02x]\n", name, type, rev);
 return 0;
}
