
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmc_dev {scalar_t__ regmap; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 pmc_reg_read(struct pmc_dev *pmc, int reg_offset)
{
 return readl(pmc->regmap + reg_offset);
}
