
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aspeed_lpc_snoop {TYPE_1__* chan; int regmap; } ;
struct TYPE_2__ {int miscdev; int fifo; } ;


 int HICR5 ;
 int HICR5_ENINT_SNP0W ;
 int HICR5_ENINT_SNP1W ;
 int HICR5_EN_SNP0W ;
 int HICR5_EN_SNP1W ;
 int kfifo_free (int *) ;
 int misc_deregister (int *) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static void aspeed_lpc_disable_snoop(struct aspeed_lpc_snoop *lpc_snoop,
         int channel)
{
 switch (channel) {
 case 0:
  regmap_update_bits(lpc_snoop->regmap, HICR5,
       HICR5_EN_SNP0W | HICR5_ENINT_SNP0W,
       0);
  break;
 case 1:
  regmap_update_bits(lpc_snoop->regmap, HICR5,
       HICR5_EN_SNP1W | HICR5_ENINT_SNP1W,
       0);
  break;
 default:
  return;
 }

 kfifo_free(&lpc_snoop->chan[channel].fifo);
 misc_deregister(&lpc_snoop->chan[channel].miscdev);
}
