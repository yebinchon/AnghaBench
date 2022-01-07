
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int dummy; } ;
struct ehci_qh {unsigned int start; unsigned int period; int hw_info2; int hw_next; } ;
typedef int __le32 ;


 int EHCI_LIST_END ;
 int ENOSPC ;
 int QH_CMASK ;
 int QH_SMASK ;
 int check_intr_schedule (struct oxu_hcd*,unsigned int,unsigned int,struct ehci_qh*,int *) ;
 int cpu_to_le32 (int) ;
 unsigned int ffs (int) ;
 int le32_to_cpup (int *) ;
 int oxu_dbg (struct oxu_hcd*,char*,struct ehci_qh*) ;
 int qh_link_periodic (struct oxu_hcd*,struct ehci_qh*) ;
 int qh_refresh (struct oxu_hcd*,struct ehci_qh*) ;

__attribute__((used)) static int qh_schedule(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
 int status;
 unsigned uframe;
 __le32 c_mask;
 unsigned frame;

 qh_refresh(oxu, qh);
 qh->hw_next = EHCI_LIST_END;
 frame = qh->start;


 if (frame < qh->period) {
  uframe = ffs(le32_to_cpup(&qh->hw_info2) & QH_SMASK);
  status = check_intr_schedule(oxu, frame, --uframe,
    qh, &c_mask);
 } else {
  uframe = 0;
  c_mask = 0;
  status = -ENOSPC;
 }




 if (status) {

  if (qh->period) {
   frame = qh->period - 1;
   do {
    for (uframe = 0; uframe < 8; uframe++) {
     status = check_intr_schedule(oxu,
       frame, uframe, qh,
       &c_mask);
     if (status == 0)
      break;
    }
   } while (status && frame--);


  } else {
   frame = 0;
   status = check_intr_schedule(oxu, 0, 0, qh, &c_mask);
  }
  if (status)
   goto done;
  qh->start = frame;


  qh->hw_info2 &= cpu_to_le32(~(QH_CMASK | QH_SMASK));
  qh->hw_info2 |= qh->period
   ? cpu_to_le32(1 << uframe)
   : cpu_to_le32(QH_SMASK);
  qh->hw_info2 |= c_mask;
 } else
  oxu_dbg(oxu, "reused qh %p schedule\n", qh);


 status = qh_link_periodic(oxu, qh);
done:
 return status;
}
