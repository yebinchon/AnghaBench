
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheet_setup_plls (struct broadsheetfb_par*) ;
 int broadsheet_setup_spi (struct broadsheetfb_par*) ;
 int broadsheet_setup_spiflash (struct broadsheetfb_par*,int *) ;
 int broadsheet_verify_spiflash (struct broadsheetfb_par*,int*) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int) ;

__attribute__((used)) static int broadsheet_setup_for_wfm_write(struct broadsheetfb_par *par,
     u16 *initial_sfmcd, int *flash_type)

{
 int err;

 err = broadsheet_setup_plls(par);
 if (err)
  return err;

 broadsheet_write_reg(par, 0x0106, 0x0203);

 err = broadsheet_setup_spi(par);
 if (err)
  return err;

 err = broadsheet_setup_spiflash(par, initial_sfmcd);
 if (err)
  return err;

 return broadsheet_verify_spiflash(par, flash_type);
}
