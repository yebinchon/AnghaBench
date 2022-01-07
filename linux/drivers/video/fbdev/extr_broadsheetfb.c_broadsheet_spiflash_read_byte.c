
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheet_read_reg (struct broadsheetfb_par*,int) ;
 int broadsheet_spiflash_wait_for_bit (struct broadsheetfb_par*,int,int,int ,int) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int ) ;

__attribute__((used)) static int broadsheet_spiflash_read_byte(struct broadsheetfb_par *par, u8 *data)
{
 int err;
 u16 tmp;

 broadsheet_write_reg(par, 0x0202, 0);

 err = broadsheet_spiflash_wait_for_bit(par, 0x0206, 3, 0, 100);
 if (err)
  return err;

 tmp = broadsheet_read_reg(par, 0x200);

 *data = tmp & 0xFF;

 return 0;
}
