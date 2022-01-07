
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knav_queue_inst {TYPE_1__* range; } ;
struct TYPE_2__ {int flags; } ;


 int RANGE_RESERVED ;

__attribute__((used)) static inline bool knav_queue_is_reserved(struct knav_queue_inst *inst)
{
 return inst->range->flags & RANGE_RESERVED;
}
