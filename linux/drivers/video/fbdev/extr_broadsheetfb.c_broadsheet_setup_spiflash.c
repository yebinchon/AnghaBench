
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int broadsheet_read_reg (struct broadsheetfb_par*,int) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int) ;

__attribute__((used)) static int broadsheet_setup_spiflash(struct broadsheetfb_par *par,
      u16 *orig_sfmcd)
{

 *orig_sfmcd = broadsheet_read_reg(par, 0x0204);
 broadsheet_write_reg(par, 0x0208, 0);
 broadsheet_write_reg(par, 0x0204, 0);
 broadsheet_write_reg(par, 0x0204, ((3 << 3) | 1));

 return 0;
}
