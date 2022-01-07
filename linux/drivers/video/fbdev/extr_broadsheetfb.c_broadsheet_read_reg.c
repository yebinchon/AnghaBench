
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;


 int BS_CMD_RD_REG ;
 int broadsheet_get_data (struct broadsheetfb_par*) ;
 int broadsheet_send_cmdargs (struct broadsheetfb_par*,int ,int,int *) ;
 int stub1 (struct broadsheetfb_par*) ;

__attribute__((used)) static u16 broadsheet_read_reg(struct broadsheetfb_par *par, u16 reg)
{
 broadsheet_send_cmdargs(par, BS_CMD_RD_REG, 1, &reg);
 par->board->wait_for_rdy(par);
 return broadsheet_get_data(par);
}
