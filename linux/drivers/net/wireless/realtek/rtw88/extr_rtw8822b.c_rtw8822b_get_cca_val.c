
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct cca_ccut {int * reg838; int * reg830; int * reg82c; } ;



__attribute__((used)) static void rtw8822b_get_cca_val(const struct cca_ccut *cca_ccut, u8 col,
     u32 *reg82c, u32 *reg830, u32 *reg838)
{
 *reg82c = cca_ccut->reg82c[col];
 *reg830 = cca_ccut->reg830[col];
 *reg838 = cca_ccut->reg838[col];
}
