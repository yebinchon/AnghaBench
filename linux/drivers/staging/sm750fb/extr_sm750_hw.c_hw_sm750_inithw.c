
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct init_status {int chip_clk; scalar_t__ mem_clk; int master_clk; } ;
struct sm750_dev {int devid; int pnltype; int accel_off; scalar_t__ nocrt; struct init_status initParm; } ;
struct pci_dev {int dummy; } ;
struct initchip_param {int dummy; } ;


 int DEFAULT_SM750LE_CHIP_CLOCK ;
 int DEFAULT_SM750_CHIP_CLOCK ;
 int MISC_CTRL ;
 unsigned int MISC_CTRL_DAC_POWER_OFF ;
 int PANEL_DISPLAY_CTRL ;
 unsigned int PANEL_DISPLAY_CTRL_DOUBLE_PIXEL ;
 unsigned int PANEL_DISPLAY_CTRL_DUAL_DISPLAY ;
 scalar_t__ SM750LE ;
 int SYSTEM_CTRL ;
 unsigned int SYSTEM_CTRL_DPMS_MASK ;
 unsigned int SYSTEM_CTRL_DPMS_VPHN ;
 unsigned int SYSTEM_CTRL_DPMS_VPHP ;
 unsigned int SYSTEM_CTRL_PCI_BURST ;
 int ddk750_init_hw (struct initchip_param*) ;
 int hw_sm750_initAccel (struct sm750_dev*) ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 int pr_info (char*) ;



 scalar_t__ sm750_get_chip_type () ;
 int sm750_sw_i2c_init (int ,int) ;
 int sm750_sw_i2c_read_reg (int,int) ;
 int sm750_sw_i2c_write_reg (int,int,int) ;

int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
{
 struct init_status *parm;

 parm = &sm750_dev->initParm;
 if (parm->chip_clk == 0)
  parm->chip_clk = (sm750_get_chip_type() == SM750LE) ?
      DEFAULT_SM750LE_CHIP_CLOCK :
      DEFAULT_SM750_CHIP_CLOCK;

 if (parm->mem_clk == 0)
  parm->mem_clk = parm->chip_clk;
 if (parm->master_clk == 0)
  parm->master_clk = parm->chip_clk / 3;

 ddk750_init_hw((struct initchip_param *)&sm750_dev->initParm);

 if (sm750_dev->devid == 0x718) {
  poke32(SYSTEM_CTRL,
         peek32(SYSTEM_CTRL) | SYSTEM_CTRL_PCI_BURST);
 }

 if (sm750_get_chip_type() != SM750LE) {
  unsigned int val;

  if (sm750_dev->nocrt) {
   poke32(MISC_CTRL,
          peek32(MISC_CTRL) | MISC_CTRL_DAC_POWER_OFF);

   val = peek32(SYSTEM_CTRL) & ~SYSTEM_CTRL_DPMS_MASK;
   val |= SYSTEM_CTRL_DPMS_VPHN;
   poke32(SYSTEM_CTRL, val);
  } else {
   poke32(MISC_CTRL,
          peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF);

   val = peek32(SYSTEM_CTRL) & ~SYSTEM_CTRL_DPMS_MASK;
   val |= SYSTEM_CTRL_DPMS_VPHP;
   poke32(SYSTEM_CTRL, val);
  }

  val = peek32(PANEL_DISPLAY_CTRL) &
   ~(PANEL_DISPLAY_CTRL_DUAL_DISPLAY |
     PANEL_DISPLAY_CTRL_DOUBLE_PIXEL);
  switch (sm750_dev->pnltype) {
  case 130:
   break;
  case 129:
   val |= PANEL_DISPLAY_CTRL_DOUBLE_PIXEL;
   break;
  case 128:
   val |= PANEL_DISPLAY_CTRL_DUAL_DISPLAY;
   break;
  }
  poke32(PANEL_DISPLAY_CTRL, val);
 } else {







  sm750_sw_i2c_init(0, 1);





  if (sm750_sw_i2c_read_reg(0xec, 0x4a) == 0x95) {




   pr_info("yes,CH7301 DVI chip found\n");
   sm750_sw_i2c_write_reg(0xec, 0x1d, 0x16);
   sm750_sw_i2c_write_reg(0xec, 0x21, 0x9);
   sm750_sw_i2c_write_reg(0xec, 0x49, 0xC0);
   pr_info("okay,CH7301 DVI chip setup done\n");
  }
 }


 if (!sm750_dev->accel_off)
  hw_sm750_initAccel(sm750_dev);

 return 0;
}
