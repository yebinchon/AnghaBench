
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu; } ;
struct dpaa2_io {TYPE_1__ dpio_desc; } ;



int dpaa2_io_get_cpu(struct dpaa2_io *d)
{
 return d->dpio_desc.cpu;
}
