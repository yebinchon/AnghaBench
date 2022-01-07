
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {size_t panel_index; int io_lock; TYPE_2__* board; TYPE_1__* info; } ;
struct TYPE_6__ {int w; int h; } ;
struct TYPE_5__ {int (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;
struct TYPE_4__ {scalar_t__ screen_base; } ;


 int BS_CMD_LD_IMG ;
 int BS_CMD_LD_IMG_END ;
 int BS_CMD_UPD_FULL ;
 int BS_CMD_WAIT_DSPE_FREND ;
 int BS_CMD_WAIT_DSPE_TRG ;
 int BS_CMD_WR_REG ;
 int broadsheet_burst_write (struct broadsheetfb_par*,int,int*) ;
 int broadsheet_send_cmdargs (struct broadsheetfb_par*,int ,int,int*) ;
 int broadsheet_send_command (struct broadsheetfb_par*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_3__* panel_table ;
 int stub1 (struct broadsheetfb_par*) ;

__attribute__((used)) static void broadsheetfb_dpy_update(struct broadsheetfb_par *par)
{
 u16 args[5];

 mutex_lock(&(par->io_lock));
 args[0] = 0x3 << 4;
 broadsheet_send_cmdargs(par, BS_CMD_LD_IMG, 1, args);

 args[0] = 0x154;
 broadsheet_send_cmdargs(par, BS_CMD_WR_REG, 1, args);
 broadsheet_burst_write(par, (panel_table[par->panel_index].w *
     panel_table[par->panel_index].h)/2,
     (u16 *) par->info->screen_base);

 broadsheet_send_command(par, BS_CMD_LD_IMG_END);

 args[0] = 0x4300;
 broadsheet_send_cmdargs(par, BS_CMD_UPD_FULL, 1, args);

 broadsheet_send_command(par, BS_CMD_WAIT_DSPE_TRG);

 broadsheet_send_command(par, BS_CMD_WAIT_DSPE_FREND);

 par->board->wait_for_rdy(par);
 mutex_unlock(&(par->io_lock));
}
