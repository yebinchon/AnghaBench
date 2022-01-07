
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int dummy; } ;


 int broadsheet_write_reg (struct broadsheetfb_par*,int,int) ;

__attribute__((used)) static int broadsheet_setup_spi(struct broadsheetfb_par *par)
{

 broadsheet_write_reg(par, 0x0204, ((3 << 3) | 1));
 broadsheet_write_reg(par, 0x0208, 0x0001);

 return 0;
}
