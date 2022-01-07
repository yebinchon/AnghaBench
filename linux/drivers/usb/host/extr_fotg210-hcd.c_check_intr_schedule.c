
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fotg210_qh {unsigned int gap_uf; scalar_t__ c_usecs; int period; int dev; scalar_t__ usecs; } ;
struct fotg210_hcd {int dummy; } ;
typedef int __hc32 ;


 int ENOSPC ;
 int check_period (struct fotg210_hcd*,unsigned int,unsigned int,int ,scalar_t__) ;
 int cpu_to_hc32 (struct fotg210_hcd*,int) ;
 scalar_t__ tt_no_collision (struct fotg210_hcd*,int ,int ,unsigned int,int) ;

__attribute__((used)) static int check_intr_schedule(struct fotg210_hcd *fotg210, unsigned frame,
  unsigned uframe, const struct fotg210_qh *qh, __hc32 *c_maskp)
{
 int retval = -ENOSPC;
 u8 mask = 0;

 if (qh->c_usecs && uframe >= 6)
  goto done;

 if (!check_period(fotg210, frame, uframe, qh->period, qh->usecs))
  goto done;
 if (!qh->c_usecs) {
  retval = 0;
  *c_maskp = 0;
  goto done;
 }
 mask = 0x03 << (uframe + qh->gap_uf);
 *c_maskp = cpu_to_hc32(fotg210, mask << 8);

 mask |= 1 << uframe;
 if (tt_no_collision(fotg210, qh->period, qh->dev, frame, mask)) {
  if (!check_period(fotg210, frame, uframe + qh->gap_uf + 1,
    qh->period, qh->c_usecs))
   goto done;
  if (!check_period(fotg210, frame, uframe + qh->gap_uf,
    qh->period, qh->c_usecs))
   goto done;
  retval = 0;
 }
done:
 return retval;
}
