
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_spi {int reg_io_width; } ;


 int dw_readl (struct dw_spi*,int ) ;
 int dw_readw (struct dw_spi*,int ) ;

__attribute__((used)) static inline u32 dw_read_io_reg(struct dw_spi *dws, u32 offset)
{
 switch (dws->reg_io_width) {
 case 2:
  return dw_readw(dws, offset);
 case 4:
 default:
  return dw_readl(dws, offset);
 }
}
