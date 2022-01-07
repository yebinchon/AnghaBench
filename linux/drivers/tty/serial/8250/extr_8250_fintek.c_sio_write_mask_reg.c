
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fintek_8250 {int dummy; } ;


 int sio_read_reg (struct fintek_8250*,int) ;
 int sio_write_reg (struct fintek_8250*,int,int) ;

__attribute__((used)) static void sio_write_mask_reg(struct fintek_8250 *pdata, u8 reg, u8 mask,
          u8 data)
{
 u8 tmp;

 tmp = (sio_read_reg(pdata, reg) & ~mask) | (mask & data);
 sio_write_reg(pdata, reg, tmp);
}
