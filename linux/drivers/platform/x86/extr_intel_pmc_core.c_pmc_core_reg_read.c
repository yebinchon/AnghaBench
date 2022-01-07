
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmc_dev {scalar_t__ regbase; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pmc_core_reg_read(struct pmc_dev *pmcdev, int reg_offset)
{
 return readl(pmcdev->regbase + reg_offset);
}
