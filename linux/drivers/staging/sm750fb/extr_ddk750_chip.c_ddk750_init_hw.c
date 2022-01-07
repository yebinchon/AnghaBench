
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct initchip_param {scalar_t__ powerMode; unsigned int memClock; unsigned int masterClock; int resetMemory; int setAllEngOff; scalar_t__ chipClock; } ;


 int ALPHA_DISPLAY_CTRL ;
 int CURRENT_GATE ;
 unsigned int CURRENT_GATE_DISPLAY ;
 unsigned int CURRENT_GATE_LOCALMEM ;
 unsigned int DISPLAY_CTRL_PLANE ;
 int DMA_ABORT_INTERRUPT ;
 unsigned int DMA_ABORT_INTERRUPT_ABORT_1 ;
 int MHz (unsigned int) ;
 int MISC_CTRL ;
 unsigned int MISC_CTRL_LOCALMEM_RESET ;
 scalar_t__ SM750LE ;
 int VGA_CONFIGURATION ;
 unsigned int VGA_CONFIGURATION_MODE ;
 unsigned int VGA_CONFIGURATION_PLL ;
 int VIDEO_ALPHA_DISPLAY_CTRL ;
 int VIDEO_DISPLAY_CTRL ;
 int outb_p (int,int) ;
 unsigned int peek32 (int ) ;
 int poke32 (int ,unsigned int) ;
 int set_chip_clock (int ) ;
 int set_master_clock (int ) ;
 int set_memory_clock (int ) ;
 int sm750_enable_2d_engine (int ) ;
 int sm750_enable_dma (int ) ;
 scalar_t__ sm750_get_chip_type () ;
 int sm750_set_current_gate (unsigned int) ;
 int sm750_set_power_mode (scalar_t__) ;

int ddk750_init_hw(struct initchip_param *pInitParam)
{
 unsigned int reg;

 if (pInitParam->powerMode != 0)
  pInitParam->powerMode = 0;
 sm750_set_power_mode(pInitParam->powerMode);


 reg = peek32(CURRENT_GATE);
 reg |= (CURRENT_GATE_DISPLAY | CURRENT_GATE_LOCALMEM);
 sm750_set_current_gate(reg);

 if (sm750_get_chip_type() != SM750LE) {

  reg = peek32(VGA_CONFIGURATION);
  reg |= (VGA_CONFIGURATION_PLL | VGA_CONFIGURATION_MODE);
  poke32(VGA_CONFIGURATION, reg);
 } else {


  outb_p(0x88, 0x3d4);
  outb_p(0x06, 0x3d5);

 }


 set_chip_clock(MHz((unsigned int)pInitParam->chipClock));


 set_memory_clock(MHz(pInitParam->memClock));


 set_master_clock(MHz(pInitParam->masterClock));







 if (pInitParam->resetMemory == 1) {
  reg = peek32(MISC_CTRL);
  reg &= ~MISC_CTRL_LOCALMEM_RESET;
  poke32(MISC_CTRL, reg);

  reg |= MISC_CTRL_LOCALMEM_RESET;
  poke32(MISC_CTRL, reg);
 }

 if (pInitParam->setAllEngOff == 1) {
  sm750_enable_2d_engine(0);


  reg = peek32(VIDEO_DISPLAY_CTRL);
  reg &= ~DISPLAY_CTRL_PLANE;
  poke32(VIDEO_DISPLAY_CTRL, reg);


  reg = peek32(VIDEO_ALPHA_DISPLAY_CTRL);
  reg &= ~DISPLAY_CTRL_PLANE;
  poke32(VIDEO_ALPHA_DISPLAY_CTRL, reg);


  reg = peek32(ALPHA_DISPLAY_CTRL);
  reg &= ~DISPLAY_CTRL_PLANE;
  poke32(ALPHA_DISPLAY_CTRL, reg);


  reg = peek32(DMA_ABORT_INTERRUPT);
  reg |= DMA_ABORT_INTERRUPT_ABORT_1;
  poke32(DMA_ABORT_INTERRUPT, reg);


  sm750_enable_dma(0);
 }



 return 0;
}
