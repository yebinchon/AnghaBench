
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_dev {TYPE_1__* regs; } ;
struct TYPE_2__ {int ts_sel; } ;


 int PCH_ECS_ETH ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static inline void pch_eth_enable_set(struct pch_dev *chip)
{
 u32 val;

 val = ioread32(&chip->regs->ts_sel) | (PCH_ECS_ETH);
 iowrite32(val, (&chip->regs->ts_sel));
}
