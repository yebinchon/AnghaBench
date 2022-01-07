
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_fg {int ab8500_fg_complete; } ;


 int completion_done (int *) ;

int ab8500_fg_inst_curr_done(struct ab8500_fg *di)
{
 return completion_done(&di->ab8500_fg_complete);
}
