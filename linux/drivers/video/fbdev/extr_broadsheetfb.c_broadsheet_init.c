
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct broadsheetfb_par {int dummy; } ;


 int BS_CMD_INIT_SYS_RUN ;
 int broadsheet_init_display (struct broadsheetfb_par*) ;
 int broadsheet_send_command (struct broadsheetfb_par*,int ) ;
 int msleep (int) ;

__attribute__((used)) static void broadsheet_init(struct broadsheetfb_par *par)
{
 broadsheet_send_command(par, BS_CMD_INIT_SYS_RUN);

 msleep(1000);
 broadsheet_init_display(par);
}
