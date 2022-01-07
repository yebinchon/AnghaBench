
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_dev {int partition_count; int pff_csr_count; int * pff_local; } ;
struct TYPE_2__ {scalar_t__ map_reg; } ;


 TYPE_1__* event_regs ;
 scalar_t__ mask_event (struct switchtec_dev*,int,int) ;
 scalar_t__ part_ev_reg ;
 scalar_t__ pff_ev_reg ;

__attribute__((used)) static int mask_all_events(struct switchtec_dev *stdev, int eid)
{
 int idx;
 int count = 0;

 if (event_regs[eid].map_reg == part_ev_reg) {
  for (idx = 0; idx < stdev->partition_count; idx++)
   count += mask_event(stdev, eid, idx);
 } else if (event_regs[eid].map_reg == pff_ev_reg) {
  for (idx = 0; idx < stdev->pff_csr_count; idx++) {
   if (!stdev->pff_local[idx])
    continue;

   count += mask_event(stdev, eid, idx);
  }
 } else {
  count += mask_event(stdev, eid, 0);
 }

 return count;
}
