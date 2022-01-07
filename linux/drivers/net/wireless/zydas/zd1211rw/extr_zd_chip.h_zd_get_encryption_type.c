
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zd_chip {int dummy; } ;


 int CR_ENCRYPTION_TYPE ;
 int zd_ioread32 (struct zd_chip*,int ,int *) ;

__attribute__((used)) static inline int zd_get_encryption_type(struct zd_chip *chip, u32 *type)
{
 return zd_ioread32(chip, CR_ENCRYPTION_TYPE, type);
}
