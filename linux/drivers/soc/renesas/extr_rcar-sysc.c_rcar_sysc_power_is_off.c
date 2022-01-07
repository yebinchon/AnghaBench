
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_sysc_ch {int chan_bit; scalar_t__ chan_offs; } ;


 unsigned int BIT (int ) ;
 scalar_t__ PWRSR_OFFS ;
 unsigned int ioread32 (scalar_t__) ;
 scalar_t__ rcar_sysc_base ;

__attribute__((used)) static bool rcar_sysc_power_is_off(const struct rcar_sysc_ch *sysc_ch)
{
 unsigned int st;

 st = ioread32(rcar_sysc_base + sysc_ch->chan_offs + PWRSR_OFFS);
 if (st & BIT(sysc_ch->chan_bit))
  return 1;

 return 0;
}
