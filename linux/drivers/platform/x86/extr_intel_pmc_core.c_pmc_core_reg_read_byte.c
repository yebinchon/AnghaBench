
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pmc_dev {scalar_t__ regbase; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 pmc_core_reg_read_byte(struct pmc_dev *pmcdev, int offset)
{
 return readb(pmcdev->regbase + offset);
}
