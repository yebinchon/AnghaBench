
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tty; } ;
struct vc_data {TYPE_1__ port; } ;


 int vc_do_resize (int ,struct vc_data*,unsigned int,unsigned int) ;

int vc_resize(struct vc_data *vc, unsigned int cols, unsigned int rows)
{
 return vc_do_resize(vc->port.tty, vc, cols, rows);
}
