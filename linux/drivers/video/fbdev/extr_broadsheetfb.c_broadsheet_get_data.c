
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* mmio_read ) (struct broadsheetfb_par*) ;} ;


 int broadsheet_gpio_get_data (struct broadsheetfb_par*) ;
 int stub1 (struct broadsheetfb_par*) ;

__attribute__((used)) static u16 broadsheet_get_data(struct broadsheetfb_par *par)
{
 if (par->board->mmio_read)
  return par->board->mmio_read(par);
 else
  return broadsheet_gpio_get_data(par);
}
