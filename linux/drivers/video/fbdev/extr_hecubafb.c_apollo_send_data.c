
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hecubafb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* wait_for_ack ) (struct hecubafb_par*,int) ;int (* set_ctl ) (struct hecubafb_par*,int ,int) ;int (* set_data ) (struct hecubafb_par*,unsigned char) ;} ;


 int HCB_DS_BIT ;
 int stub1 (struct hecubafb_par*,unsigned char) ;
 int stub2 (struct hecubafb_par*,int ,int) ;
 int stub3 (struct hecubafb_par*,int) ;
 int stub4 (struct hecubafb_par*,int ,int) ;
 int stub5 (struct hecubafb_par*,int) ;

__attribute__((used)) static void apollo_send_data(struct hecubafb_par *par, unsigned char data)
{

 par->board->set_data(par, data);


 par->board->set_ctl(par, HCB_DS_BIT, 0);


 par->board->wait_for_ack(par, 0);


 par->board->set_ctl(par, HCB_DS_BIT, 1);


 par->board->wait_for_ack(par, 1);
}
