
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheet_setup_for_wfm_write (struct broadsheetfb_par*,int *,int*) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int ) ;
 int broadsheet_write_spiflash (struct broadsheetfb_par*,int,int const*,size_t,int) ;

__attribute__((used)) static int broadsheet_store_waveform_to_spiflash(struct broadsheetfb_par *par,
      const u8 *wfm, size_t wfm_size)
{
 int err = 0;
 u16 initial_sfmcd = 0;
 int flash_type = 0;

 err = broadsheet_setup_for_wfm_write(par, &initial_sfmcd, &flash_type);
 if (err)
  goto failout;

 err = broadsheet_write_spiflash(par, 0x886, wfm, wfm_size, flash_type);

failout:
 broadsheet_write_reg(par, 0x0204, initial_sfmcd);
 return err;
}
