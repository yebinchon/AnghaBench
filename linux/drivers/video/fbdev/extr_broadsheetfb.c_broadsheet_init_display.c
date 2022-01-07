
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {size_t panel_index; TYPE_3__* board; TYPE_2__* info; } ;
struct TYPE_8__ {int w; int h; int sdcfg; int gdcfg; int lutfmt; int fsynclen; int fendfbegin; int lsynclen; int lendlbegin; int pixclk; } ;
struct TYPE_7__ {int (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;
struct TYPE_5__ {int xres; int yres; } ;
struct TYPE_6__ {scalar_t__ screen_base; TYPE_1__ var; } ;


 int BS_CMD_INIT_DSPE_CFG ;
 int BS_CMD_INIT_DSPE_TMG ;
 int BS_CMD_LD_IMG ;
 int BS_CMD_LD_IMG_END ;
 int BS_CMD_RD_WFM_INFO ;
 int BS_CMD_UPD_FULL ;
 int BS_CMD_UPD_GDRV_CLR ;
 int BS_CMD_WAIT_DSPE_FREND ;
 int BS_CMD_WAIT_DSPE_TRG ;
 int BS_CMD_WR_REG ;
 int broadsheet_burst_write (struct broadsheetfb_par*,int,int*) ;
 int broadsheet_send_cmdargs (struct broadsheetfb_par*,int ,int,int*) ;
 int broadsheet_send_command (struct broadsheetfb_par*,int ) ;
 int broadsheet_write_reg (struct broadsheetfb_par*,int,int) ;
 int broadsheet_write_reg32 (struct broadsheetfb_par*,int,int) ;
 TYPE_4__* panel_table ;
 int stub1 (struct broadsheetfb_par*) ;

__attribute__((used)) static void broadsheet_init_display(struct broadsheetfb_par *par)
{
 u16 args[5];
 int xres = par->info->var.xres;
 int yres = par->info->var.yres;

 args[0] = panel_table[par->panel_index].w;
 args[1] = panel_table[par->panel_index].h;
 args[2] = panel_table[par->panel_index].sdcfg;
 args[3] = panel_table[par->panel_index].gdcfg;
 args[4] = panel_table[par->panel_index].lutfmt;
 broadsheet_send_cmdargs(par, BS_CMD_INIT_DSPE_CFG, 5, args);


 broadsheet_send_cmdargs(par, BS_CMD_INIT_DSPE_CFG, 5, args);

 args[0] = panel_table[par->panel_index].fsynclen;
 args[1] = panel_table[par->panel_index].fendfbegin;
 args[2] = panel_table[par->panel_index].lsynclen;
 args[3] = panel_table[par->panel_index].lendlbegin;
 args[4] = panel_table[par->panel_index].pixclk;
 broadsheet_send_cmdargs(par, BS_CMD_INIT_DSPE_TMG, 5, args);

 broadsheet_write_reg32(par, 0x310, xres*yres*2);


 args[0] = 0x886;
 args[1] = 0;
 broadsheet_send_cmdargs(par, BS_CMD_RD_WFM_INFO, 2, args);

 broadsheet_send_command(par, BS_CMD_UPD_GDRV_CLR);

 broadsheet_send_command(par, BS_CMD_WAIT_DSPE_TRG);

 broadsheet_write_reg(par, 0x330, 0x84);

 broadsheet_send_command(par, BS_CMD_WAIT_DSPE_TRG);

 args[0] = (0x3 << 4);
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
}
