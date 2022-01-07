
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mobile_lcdc_overlay {TYPE_2__* channel; } ;
struct TYPE_4__ {TYPE_1__* lcdc; } ;
struct TYPE_3__ {scalar_t__ base; } ;


 scalar_t__ SIDE_B_OFFSET ;
 int iowrite32 (unsigned long,scalar_t__) ;

__attribute__((used)) static void lcdc_write_overlay(struct sh_mobile_lcdc_overlay *ovl,
          int reg, unsigned long data)
{
 iowrite32(data, ovl->channel->lcdc->base + reg);
 iowrite32(data, ovl->channel->lcdc->base + reg + SIDE_B_OFFSET);
}
