
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int dummy; } ;


 int broadsheet_spiflash_op_on_address (struct broadsheetfb_par*,int,int) ;
 int broadsheet_spiflash_wait_for_status (struct broadsheetfb_par*,int) ;
 int broadsheet_spiflash_write_control (struct broadsheetfb_par*,int) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int ) ;

__attribute__((used)) static int broadsheet_spiflash_erase_sector(struct broadsheetfb_par *par,
      int addr)
{
 int err;

 broadsheet_spiflash_write_control(par, 1);

 err = broadsheet_spiflash_op_on_address(par, 0xD8, addr);

 broadsheet_write_reg(par, 0x0208, 0);

 if (err)
  return err;

 err = broadsheet_spiflash_wait_for_status(par, 1000);

 return err;
}
