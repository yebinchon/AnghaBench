
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct aspeed_lpc_snoop {int * chan; int regmap; } ;
typedef int irqreturn_t ;


 int HICR6 ;
 int HICR6_STR_SNP0W ;
 int HICR6_STR_SNP1W ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SNPWDR ;
 int SNPWDR_CH0_MASK ;
 int SNPWDR_CH0_SHIFT ;
 int SNPWDR_CH1_MASK ;
 int SNPWDR_CH1_SHIFT ;
 int put_fifo_with_discard (int *,int) ;
 scalar_t__ regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static irqreturn_t aspeed_lpc_snoop_irq(int irq, void *arg)
{
 struct aspeed_lpc_snoop *lpc_snoop = arg;
 u32 reg, data;

 if (regmap_read(lpc_snoop->regmap, HICR6, &reg))
  return IRQ_NONE;


 reg &= (HICR6_STR_SNP0W | HICR6_STR_SNP1W);
 if (!reg)
  return IRQ_NONE;


 regmap_write(lpc_snoop->regmap, HICR6, reg);


 regmap_read(lpc_snoop->regmap, SNPWDR, &data);

 if (reg & HICR6_STR_SNP0W) {
  u8 val = (data & SNPWDR_CH0_MASK) >> SNPWDR_CH0_SHIFT;

  put_fifo_with_discard(&lpc_snoop->chan[0], val);
 }
 if (reg & HICR6_STR_SNP1W) {
  u8 val = (data & SNPWDR_CH1_MASK) >> SNPWDR_CH1_SHIFT;

  put_fifo_with_discard(&lpc_snoop->chan[1], val);
 }

 return IRQ_HANDLED;
}
