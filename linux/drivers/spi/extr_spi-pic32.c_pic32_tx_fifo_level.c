
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pic32_spi {TYPE_1__* regs; } ;
struct TYPE_2__ {int status; } ;


 int STAT_TF_LVL_MASK ;
 int STAT_TF_LVL_SHIFT ;
 int readl (int *) ;

__attribute__((used)) static inline u32 pic32_tx_fifo_level(struct pic32_spi *pic32s)
{
 u32 sr = readl(&pic32s->regs->status);

 return (sr >> STAT_TF_LVL_SHIFT) & STAT_TF_LVL_MASK;
}
