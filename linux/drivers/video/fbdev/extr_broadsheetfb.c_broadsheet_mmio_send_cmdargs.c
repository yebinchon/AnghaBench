
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* mmio_write ) (struct broadsheetfb_par*,int ,int ) ;} ;


 int BS_MMIO_CMD ;
 int BS_MMIO_DATA ;
 int stub1 (struct broadsheetfb_par*,int ,int ) ;
 int stub2 (struct broadsheetfb_par*,int ,int ) ;

__attribute__((used)) static void broadsheet_mmio_send_cmdargs(struct broadsheetfb_par *par, u16 cmd,
        int argc, u16 *argv)
{
 int i;

 par->board->mmio_write(par, BS_MMIO_CMD, cmd);

 for (i = 0; i < argc; i++)
  par->board->mmio_write(par, BS_MMIO_DATA, argv[i]);
}
