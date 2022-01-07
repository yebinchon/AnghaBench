
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* set_ctl ) (struct broadsheetfb_par*,int ,int) ;int (* get_hdb ) (struct broadsheetfb_par*) ;int (* wait_for_rdy ) (struct broadsheetfb_par*) ;} ;


 int BS_CS ;
 int BS_DC ;
 int BS_WR ;
 int stub1 (struct broadsheetfb_par*) ;
 int stub2 (struct broadsheetfb_par*,int ,int) ;
 int stub3 (struct broadsheetfb_par*,int ,int) ;
 int stub4 (struct broadsheetfb_par*,int ,int) ;
 int stub5 (struct broadsheetfb_par*) ;
 int stub6 (struct broadsheetfb_par*,int ,int) ;
 int stub7 (struct broadsheetfb_par*,int ,int) ;

__attribute__((used)) static u16 broadsheet_gpio_get_data(struct broadsheetfb_par *par)
{
 u16 res;

 par->board->wait_for_rdy(par);


 par->board->set_ctl(par, BS_DC, 1);
 par->board->set_ctl(par, BS_CS, 0);
 par->board->set_ctl(par, BS_WR, 0);

 res = par->board->get_hdb(par);


 par->board->set_ctl(par, BS_WR, 1);
 par->board->set_ctl(par, BS_CS, 1);

 return res;
}
