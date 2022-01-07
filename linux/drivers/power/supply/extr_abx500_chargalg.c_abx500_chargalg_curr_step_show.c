
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int curr_step; } ;
struct abx500_chargalg {TYPE_1__ curr_status; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t abx500_chargalg_curr_step_show(struct abx500_chargalg *di,
           char *buf)
{
 return sprintf(buf, "%d\n", di->curr_status.curr_step);
}
