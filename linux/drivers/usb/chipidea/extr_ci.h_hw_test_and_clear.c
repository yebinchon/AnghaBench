
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * regmap; } ;
struct ci_hdrc {TYPE_1__ hw_bank; } ;
typedef enum ci_hw_regs { ____Placeholder_ci_hw_regs } ci_hw_regs ;


 int __hw_write (struct ci_hdrc*,int,int ) ;
 int ioread32 (int ) ;

__attribute__((used)) static inline u32 hw_test_and_clear(struct ci_hdrc *ci, enum ci_hw_regs reg,
        u32 mask)
{
 u32 val = ioread32(ci->hw_bank.regmap[reg]) & mask;

 __hw_write(ci, val, ci->hw_bank.regmap[reg]);
 return val;
}
