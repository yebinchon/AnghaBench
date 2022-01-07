
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {scalar_t__ mmio_write; } ;


 int broadsheet_gpio_send_cmdargs (struct broadsheetfb_par*,int ,int,int *) ;
 int broadsheet_mmio_send_cmdargs (struct broadsheetfb_par*,int ,int,int *) ;

__attribute__((used)) static void broadsheet_send_cmdargs(struct broadsheetfb_par *par, u16 cmd,
        int argc, u16 *argv)
{
 if (par->board->mmio_write)
  broadsheet_mmio_send_cmdargs(par, cmd, argc, argv);
 else
  broadsheet_gpio_send_cmdargs(par, cmd, argc, argv);
}
