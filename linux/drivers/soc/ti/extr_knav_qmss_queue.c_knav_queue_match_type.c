
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_queue_inst {TYPE_1__* range; } ;
struct TYPE_2__ {int flags; } ;


 unsigned int KNAV_QUEUE_ACC ;
 unsigned int KNAV_QUEUE_GP ;
 unsigned int KNAV_QUEUE_QPEND ;
 int RANGE_HAS_ACCUMULATOR ;
 int RANGE_HAS_IRQ ;

__attribute__((used)) static inline bool knav_queue_match_type(struct knav_queue_inst *inst,
      unsigned type)
{
 if ((type == KNAV_QUEUE_QPEND) &&
     (inst->range->flags & RANGE_HAS_IRQ)) {
  return 1;
 } else if ((type == KNAV_QUEUE_ACC) &&
  (inst->range->flags & RANGE_HAS_ACCUMULATOR)) {
  return 1;
 } else if ((type == KNAV_QUEUE_GP) &&
  !(inst->range->flags &
   (RANGE_HAS_ACCUMULATOR | RANGE_HAS_IRQ))) {
  return 1;
 }
 return 0;
}
