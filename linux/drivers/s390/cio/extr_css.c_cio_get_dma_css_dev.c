
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {struct device device; } ;


 TYPE_1__** channel_subsystems ;

struct device *cio_get_dma_css_dev(void)
{
 return &channel_subsystems[0]->device;
}
