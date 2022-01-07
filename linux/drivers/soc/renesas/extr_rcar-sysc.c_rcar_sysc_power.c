
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_sysc_ch {int isr_bit; scalar_t__ chan_offs; int chan_bit; } ;


 unsigned int BIT (int ) ;
 int EIO ;
 int PWRER_DELAY_US ;
 scalar_t__ PWRER_OFFS ;
 int PWRER_RETRIES ;
 scalar_t__ SYSCIER ;
 scalar_t__ SYSCIMR ;
 scalar_t__ SYSCISCR ;
 scalar_t__ SYSCISR ;
 int SYSCISR_DELAY_US ;
 int SYSCISR_RETRIES ;
 unsigned int ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int pr_debug (char*,char*,int ,unsigned int,int) ;
 scalar_t__ rcar_sysc_base ;
 int rcar_sysc_lock ;
 int rcar_sysc_pwr_on_off (struct rcar_sysc_ch const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int ) ;

__attribute__((used)) static int rcar_sysc_power(const struct rcar_sysc_ch *sysc_ch, bool on)
{
 unsigned int isr_mask = BIT(sysc_ch->isr_bit);
 unsigned int chan_mask = BIT(sysc_ch->chan_bit);
 unsigned int status;
 unsigned long flags;
 int ret = 0;
 int k;

 spin_lock_irqsave(&rcar_sysc_lock, flags);





 iowrite32(ioread32(rcar_sysc_base + SYSCIMR) | isr_mask,
    rcar_sysc_base + SYSCIMR);
 iowrite32(ioread32(rcar_sysc_base + SYSCIER) | isr_mask,
    rcar_sysc_base + SYSCIER);

 iowrite32(isr_mask, rcar_sysc_base + SYSCISCR);


 for (k = 0; k < PWRER_RETRIES; k++) {
  ret = rcar_sysc_pwr_on_off(sysc_ch, on);
  if (ret)
   goto out;

  status = ioread32(rcar_sysc_base +
      sysc_ch->chan_offs + PWRER_OFFS);
  if (!(status & chan_mask))
   break;

  udelay(PWRER_DELAY_US);
 }

 if (k == PWRER_RETRIES) {
  ret = -EIO;
  goto out;
 }


 for (k = 0; k < SYSCISR_RETRIES; k++) {
  if (ioread32(rcar_sysc_base + SYSCISR) & isr_mask)
   break;
  udelay(SYSCISR_DELAY_US);
 }

 if (k == SYSCISR_RETRIES)
  ret = -EIO;

 iowrite32(isr_mask, rcar_sysc_base + SYSCISCR);

 out:
 spin_unlock_irqrestore(&rcar_sysc_lock, flags);

 pr_debug("sysc power %s domain %d: %08x -> %d\n", on ? "on" : "off",
   sysc_ch->isr_bit, ioread32(rcar_sysc_base + SYSCISR), ret);
 return ret;
}
