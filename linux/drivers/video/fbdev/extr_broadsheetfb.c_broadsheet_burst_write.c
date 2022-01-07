
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {scalar_t__ mmio_write; } ;


 int broadsheet_gpio_burst_write (struct broadsheetfb_par*,int,int *) ;
 int broadsheet_mmio_burst_write (struct broadsheetfb_par*,int,int *) ;

__attribute__((used)) static void broadsheet_burst_write(struct broadsheetfb_par *par, int size,
       u16 *data)
{
 if (par->board->mmio_write)
  broadsheet_mmio_burst_write(par, size, data);
 else
  broadsheet_gpio_burst_write(par, size, data);
}
