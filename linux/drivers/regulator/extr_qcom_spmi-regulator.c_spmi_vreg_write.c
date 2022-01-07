
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct spmi_regulator {scalar_t__ base; int regmap; } ;


 int regmap_bulk_write (int ,scalar_t__,int *,int) ;

__attribute__((used)) static inline int spmi_vreg_write(struct spmi_regulator *vreg, u16 addr,
    u8 *buf, int len)
{
 return regmap_bulk_write(vreg->regmap, vreg->base + addr, buf, len);
}
