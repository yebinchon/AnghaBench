
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_spi {int reg_io_width; } ;


 int dw_writel (struct dw_spi*,int ,int ) ;
 int dw_writew (struct dw_spi*,int ,int ) ;

__attribute__((used)) static inline void dw_write_io_reg(struct dw_spi *dws, u32 offset, u32 val)
{
 switch (dws->reg_io_width) {
 case 2:
  dw_writew(dws, offset, val);
  break;
 case 4:
 default:
  dw_writel(dws, offset, val);
  break;
 }
}
