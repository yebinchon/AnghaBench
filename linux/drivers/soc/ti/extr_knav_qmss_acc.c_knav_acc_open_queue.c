
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_range_info {unsigned int queue_base; } ;
struct knav_queue_inst {unsigned int id; } ;


 int knav_range_setup_acc_irq (struct knav_range_info*,unsigned int,int) ;

__attribute__((used)) static int knav_acc_open_queue(struct knav_range_info *range,
    struct knav_queue_inst *inst, unsigned flags)
{
 unsigned id = inst->id - range->queue_base;

 return knav_range_setup_acc_irq(range, id, 1);
}
