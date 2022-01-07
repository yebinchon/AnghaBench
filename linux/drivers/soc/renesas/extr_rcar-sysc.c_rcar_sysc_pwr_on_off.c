
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_sysc_ch {unsigned int chan_bit; scalar_t__ chan_offs; } ;


 int BIT (unsigned int) ;
 int EAGAIN ;
 unsigned int PWROFFCR_OFFS ;
 unsigned int PWRONCR_OFFS ;
 scalar_t__ SYSCSR ;
 int SYSCSR_DELAY_US ;
 unsigned int SYSCSR_POFFENB ;
 unsigned int SYSCSR_PONENB ;
 int SYSCSR_RETRIES ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 scalar_t__ rcar_sysc_base ;
 int udelay (int ) ;

__attribute__((used)) static int rcar_sysc_pwr_on_off(const struct rcar_sysc_ch *sysc_ch, bool on)
{
 unsigned int sr_bit, reg_offs;
 int k;

 if (on) {
  sr_bit = SYSCSR_PONENB;
  reg_offs = PWRONCR_OFFS;
 } else {
  sr_bit = SYSCSR_POFFENB;
  reg_offs = PWROFFCR_OFFS;
 }


 for (k = 0; k < SYSCSR_RETRIES; k++) {
  if (ioread32(rcar_sysc_base + SYSCSR) & BIT(sr_bit))
   break;
  udelay(SYSCSR_DELAY_US);
 }

 if (k == SYSCSR_RETRIES)
  return -EAGAIN;


 iowrite32(BIT(sysc_ch->chan_bit),
    rcar_sysc_base + sysc_ch->chan_offs + reg_offs);

 return 0;
}
