
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufx_data {int dummy; } ;


 int ufx_reg_clear_and_set_bits (struct ufx_data*,int ,int ,int ) ;

__attribute__((used)) static int ufx_reg_clear_bits(struct ufx_data *dev, u32 index, u32 bits)
{
 return ufx_reg_clear_and_set_bits(dev, index, bits, 0);
}
