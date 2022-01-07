
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int dummy; } ;


 int broadsheet_read_reg (struct broadsheetfb_par*,int) ;

__attribute__((used)) static int is_broadsheet_pll_locked(struct broadsheetfb_par *par)
{
 return broadsheet_read_reg(par, 0x000A) & 0x0001;
}
