
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long tv_pclk_rate; } ;


 TYPE_1__ dispc ;

void dispc_set_tv_pclk(unsigned long pclk)
{
 dispc.tv_pclk_rate = pclk;
}
