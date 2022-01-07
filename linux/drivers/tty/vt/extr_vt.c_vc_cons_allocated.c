
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ d; } ;


 unsigned int MAX_NR_CONSOLES ;
 TYPE_1__* vc_cons ;

int vc_cons_allocated(unsigned int i)
{
 return (i < MAX_NR_CONSOLES && vc_cons[i].d);
}
