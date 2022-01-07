
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_dev {TYPE_1__* regs; } ;
struct TYPE_2__ {int stl_max_set_en; int stl_max_set; } ;


 int iowrite32 (int,int *) ;

__attribute__((used)) static void pch_set_system_time_count(struct pch_dev *chip)
{
 iowrite32(0x01, &chip->regs->stl_max_set_en);
 iowrite32(0xFFFFFFFF, &chip->regs->stl_max_set);
 iowrite32(0x00, &chip->regs->stl_max_set_en);
}
