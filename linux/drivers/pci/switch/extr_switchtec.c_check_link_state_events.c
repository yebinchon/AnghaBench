
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switchtec_dev {int pff_csr_count; int* link_event_count; int link_event_work; int dev; TYPE_1__* mmio_pff_csr; } ;
struct TYPE_2__ {int link_state_hdr; } ;


 int dev_dbg (int *,char*,int,int) ;
 int ioread32 (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void check_link_state_events(struct switchtec_dev *stdev)
{
 int idx;
 u32 reg;
 int count;
 int occurred = 0;

 for (idx = 0; idx < stdev->pff_csr_count; idx++) {
  reg = ioread32(&stdev->mmio_pff_csr[idx].link_state_hdr);
  dev_dbg(&stdev->dev, "link_state: %d->%08x\n", idx, reg);
  count = (reg >> 5) & 0xFF;

  if (count != stdev->link_event_count[idx]) {
   occurred = 1;
   stdev->link_event_count[idx] = count;
  }
 }

 if (occurred)
  schedule_work(&stdev->link_event_work);
}
