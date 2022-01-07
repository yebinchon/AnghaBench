
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zd_chip {int dummy; } ;


 int CR_BASIC_RATE_TBL ;
 int zd_ioread16 (struct zd_chip*,int ,int *) ;

__attribute__((used)) static inline int zd_chip_get_basic_rates(struct zd_chip *chip, u16 *cr_rates)
{
 return zd_ioread16(chip, CR_BASIC_RATE_TBL, cr_rates);
}
