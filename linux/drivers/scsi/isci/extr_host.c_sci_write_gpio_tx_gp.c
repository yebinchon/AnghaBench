
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct isci_host {TYPE_3__* scu_registers; } ;
struct TYPE_4__ {int * output_data_select; } ;
struct TYPE_5__ {TYPE_1__ sgpio; } ;
struct TYPE_6__ {TYPE_2__ peg0; } ;


 int EINVAL ;
 int isci_gpio_count (struct isci_host*) ;
 int to_sas_gpio_od (int,int) ;
 int try_test_sas_gpio_gp_bit (int ,scalar_t__*,scalar_t__,scalar_t__) ;
 int writel (int,int *) ;

__attribute__((used)) static int sci_write_gpio_tx_gp(struct isci_host *ihost, u8 reg_index, u8 reg_count, u8 *write_data)
{
 int d;


 if (reg_index == 0)
  return -EINVAL;

 for (d = 0; d < isci_gpio_count(ihost); d++) {
  u32 val = 0x444;
  int i;

  for (i = 0; i < 3; i++) {
   int bit;

   bit = try_test_sas_gpio_gp_bit(to_sas_gpio_od(d, i),
             write_data, reg_index,
             reg_count);
   if (bit < 0)
    break;


   val &= ~(bit << ((i << 2) + 2));
  }

  if (i < 3)
   break;
  writel(val, &ihost->scu_registers->peg0.sgpio.output_data_select[d]);
 }




 return d > 0;
}
