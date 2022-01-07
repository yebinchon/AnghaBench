
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knav_range_info {int dummy; } ;
struct knav_queue_inst {int dummy; } ;


 int knav_queue_free_irq (struct knav_queue_inst*) ;

__attribute__((used)) static int knav_gp_close_queue(struct knav_range_info *range,
    struct knav_queue_inst *inst)
{
 knav_queue_free_irq(inst);
 return 0;
}
