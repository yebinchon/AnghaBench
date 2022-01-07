
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fotg210_qh_hw {int hw_info2; int hw_next; } ;
struct fotg210_qh {unsigned int start; unsigned int period; struct fotg210_qh_hw* hw; } ;
struct fotg210_hcd {unsigned int random_frame; } ;
typedef int __hc32 ;


 int ENOSPC ;
 int FOTG210_LIST_END (struct fotg210_hcd*) ;
 int QH_CMASK ;
 int QH_SMASK ;
 int check_intr_schedule (struct fotg210_hcd*,unsigned int,unsigned int,struct fotg210_qh*,int *) ;
 int cpu_to_hc32 (struct fotg210_hcd*,int) ;
 unsigned int ffs (int) ;
 int fotg210_dbg (struct fotg210_hcd*,char*,struct fotg210_qh*) ;
 int hc32_to_cpup (struct fotg210_hcd*,int *) ;
 int qh_link_periodic (struct fotg210_hcd*,struct fotg210_qh*) ;
 int qh_refresh (struct fotg210_hcd*,struct fotg210_qh*) ;

__attribute__((used)) static int qh_schedule(struct fotg210_hcd *fotg210, struct fotg210_qh *qh)
{
 int status;
 unsigned uframe;
 __hc32 c_mask;
 unsigned frame;
 struct fotg210_qh_hw *hw = qh->hw;

 qh_refresh(fotg210, qh);
 hw->hw_next = FOTG210_LIST_END(fotg210);
 frame = qh->start;


 if (frame < qh->period) {
  uframe = ffs(hc32_to_cpup(fotg210, &hw->hw_info2) & QH_SMASK);
  status = check_intr_schedule(fotg210, frame, --uframe,
    qh, &c_mask);
 } else {
  uframe = 0;
  c_mask = 0;
  status = -ENOSPC;
 }




 if (status) {

  if (qh->period) {
   int i;

   for (i = qh->period; status && i > 0; --i) {
    frame = ++fotg210->random_frame % qh->period;
    for (uframe = 0; uframe < 8; uframe++) {
     status = check_intr_schedule(fotg210,
       frame, uframe, qh,
       &c_mask);
     if (status == 0)
      break;
    }
   }


  } else {
   frame = 0;
   status = check_intr_schedule(fotg210, 0, 0, qh,
     &c_mask);
  }
  if (status)
   goto done;
  qh->start = frame;


  hw->hw_info2 &= cpu_to_hc32(fotg210, ~(QH_CMASK | QH_SMASK));
  hw->hw_info2 |= qh->period
   ? cpu_to_hc32(fotg210, 1 << uframe)
   : cpu_to_hc32(fotg210, QH_SMASK);
  hw->hw_info2 |= c_mask;
 } else
  fotg210_dbg(fotg210, "reused qh %p schedule\n", qh);


 qh_link_periodic(fotg210, qh);
done:
 return status;
}
