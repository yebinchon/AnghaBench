
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmc_dev {scalar_t__ regbase; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void pmc_core_reg_write(struct pmc_dev *pmcdev, int
       reg_offset, u32 val)
{
 writel(val, pmcdev->regbase + reg_offset);
}
