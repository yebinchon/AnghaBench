
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ci_hdrc {int dummy; } ;
typedef enum ci_hw_regs { ____Placeholder_ci_hw_regs } ci_hw_regs ;


 int __ffs (int) ;
 int hw_read (struct ci_hdrc*,int,int ) ;
 int hw_write (struct ci_hdrc*,int,int,int) ;

__attribute__((used)) static inline u32 hw_test_and_write(struct ci_hdrc *ci, enum ci_hw_regs reg,
        u32 mask, u32 data)
{
 u32 val = hw_read(ci, reg, ~0);

 hw_write(ci, reg, mask, data);
 return (val & mask) >> __ffs(mask);
}
