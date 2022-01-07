
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hecubafb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int (* set_ctl ) (struct hecubafb_par*,int ,int) ;} ;


 int HCB_CD_BIT ;
 int apollo_send_data (struct hecubafb_par*,unsigned char) ;
 int stub1 (struct hecubafb_par*,int ,int) ;
 int stub2 (struct hecubafb_par*,int ,int) ;

__attribute__((used)) static void apollo_send_command(struct hecubafb_par *par, unsigned char data)
{

 par->board->set_ctl(par, HCB_CD_BIT, 1);


 apollo_send_data(par, data);


 par->board->set_ctl(par, HCB_CD_BIT, 0);
}
