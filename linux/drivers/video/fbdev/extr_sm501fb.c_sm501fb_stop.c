
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sm501fb_info {TYPE_2__* regs_res; int regs; TYPE_2__* regs2d_res; int regs2d; TYPE_2__* fbmem_res; int fbmem; TYPE_1__* dev; } ;
struct TYPE_4__ {int start; } ;
struct TYPE_3__ {int parent; } ;


 int SM501_GATE_DISPLAY ;
 int iounmap (int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_2__*) ;
 int sm501_unit_power (int ,int ,int ) ;

__attribute__((used)) static void sm501fb_stop(struct sm501fb_info *info)
{

 sm501_unit_power(info->dev->parent, SM501_GATE_DISPLAY, 0);

 iounmap(info->fbmem);
 release_mem_region(info->fbmem_res->start,
      resource_size(info->fbmem_res));

 iounmap(info->regs2d);
 release_mem_region(info->regs2d_res->start,
      resource_size(info->regs2d_res));

 iounmap(info->regs);
 release_mem_region(info->regs_res->start,
      resource_size(info->regs_res));
}
