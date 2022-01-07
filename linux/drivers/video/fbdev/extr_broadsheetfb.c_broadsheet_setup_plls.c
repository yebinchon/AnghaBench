
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct broadsheetfb_par {int dummy; } ;


 int ETIMEDOUT ;
 int broadsheet_read_reg (struct broadsheetfb_par*,int) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int) ;
 int is_broadsheet_pll_locked (struct broadsheetfb_par*) ;
 int mdelay (int) ;

__attribute__((used)) static int broadsheet_setup_plls(struct broadsheetfb_par *par)
{
 int retry_count = 0;
 u16 tmp;


 broadsheet_write_reg(par, 0x0006, 0x0000);

 broadsheet_write_reg(par, 0x0010, 0x0004);
 broadsheet_write_reg(par, 0x0012, 0x5949);
 broadsheet_write_reg(par, 0x0014, 0x0040);
 broadsheet_write_reg(par, 0x0016, 0x0000);

 do {
  if (retry_count++ > 100)
   return -ETIMEDOUT;
  mdelay(1);
 } while (!is_broadsheet_pll_locked(par));

 tmp = broadsheet_read_reg(par, 0x0006);
 tmp &= ~0x1;
 broadsheet_write_reg(par, 0x0006, tmp);

 return 0;
}
