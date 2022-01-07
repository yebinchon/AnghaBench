
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smcd_event {int dummy; } ;
struct ism_dev {int ieq_idx; int smcd; TYPE_2__* ieq; } ;
struct TYPE_3__ {int idx; } ;
struct TYPE_4__ {struct smcd_event* entry; TYPE_1__ header; } ;


 scalar_t__ ARRAY_SIZE (struct smcd_event*) ;
 int READ_ONCE (int ) ;
 int debug_event (int ,int,struct smcd_event*,int) ;
 int ism_debug_info ;
 int smcd_handle_event (int ,struct smcd_event*) ;

__attribute__((used)) static void ism_handle_event(struct ism_dev *ism)
{
 struct smcd_event *entry;

 while ((ism->ieq_idx + 1) != READ_ONCE(ism->ieq->header.idx)) {
  if (++(ism->ieq_idx) == ARRAY_SIZE(ism->ieq->entry))
   ism->ieq_idx = 0;

  entry = &ism->ieq->entry[ism->ieq_idx];
  debug_event(ism_debug_info, 2, entry, sizeof(*entry));
  smcd_handle_event(ism->smcd, entry);
 }
}
