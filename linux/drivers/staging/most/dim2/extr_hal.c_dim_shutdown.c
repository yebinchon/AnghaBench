
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dim_is_initialized; } ;


 int dim2_cleanup () ;
 TYPE_1__ g ;

void dim_shutdown(void)
{
 g.dim_is_initialized = 0;
 dim2_cleanup();
}
