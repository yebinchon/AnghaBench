
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {int io_lock; TYPE_3__* board; TYPE_2__* info; } ;
struct TYPE_6__ {int (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;
struct TYPE_4__ {int xres; } ;
struct TYPE_5__ {TYPE_1__ var; scalar_t__ screen_base; } ;


 int BS_CMD_LD_IMG_AREA ;
 int BS_CMD_LD_IMG_END ;
 int BS_CMD_UPD_FULL ;
 int BS_CMD_WAIT_DSPE_FREND ;
 int BS_CMD_WAIT_DSPE_TRG ;
 int BS_CMD_WR_REG ;
 int broadsheet_burst_write (struct broadsheetfb_par*,int,int*) ;
 int broadsheet_send_cmdargs (struct broadsheetfb_par*,int ,int,int*) ;
 int broadsheet_send_command (struct broadsheetfb_par*,int ) ;
 int cpu_to_le16 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct broadsheetfb_par*) ;

__attribute__((used)) static void broadsheetfb_dpy_update_pages(struct broadsheetfb_par *par,
      u16 y1, u16 y2)
{
 u16 args[5];
 unsigned char *buf = (unsigned char *)par->info->screen_base;

 mutex_lock(&(par->io_lock));

 y1 &= 0xFFFC;

 y2 |= 0x0003;

 args[0] = 0x3 << 4;
 args[1] = 0;
 args[2] = y1;
 args[3] = cpu_to_le16(par->info->var.xres);
 args[4] = y2;
 broadsheet_send_cmdargs(par, BS_CMD_LD_IMG_AREA, 5, args);

 args[0] = 0x154;
 broadsheet_send_cmdargs(par, BS_CMD_WR_REG, 1, args);

 buf += y1 * par->info->var.xres;
 broadsheet_burst_write(par, ((1 + y2 - y1) * par->info->var.xres)/2,
    (u16 *) buf);

 broadsheet_send_command(par, BS_CMD_LD_IMG_END);

 args[0] = 0x4300;
 broadsheet_send_cmdargs(par, BS_CMD_UPD_FULL, 1, args);

 broadsheet_send_command(par, BS_CMD_WAIT_DSPE_TRG);

 broadsheet_send_command(par, BS_CMD_WAIT_DSPE_FREND);

 par->board->wait_for_rdy(par);
 mutex_unlock(&(par->io_lock));

}
