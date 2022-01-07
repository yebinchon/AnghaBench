
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 unsigned int EVTCHN_COL (unsigned int) ;
 unsigned int EVTCHN_ROW (unsigned int) ;
 int GFP_KERNEL ;
 int clear_evtchn_to_irq_row (unsigned int) ;
 int** evtchn_to_irq ;
 scalar_t__ get_zeroed_page (int ) ;
 unsigned int xen_evtchn_max_channels () ;

__attribute__((used)) static int set_evtchn_to_irq(unsigned evtchn, unsigned irq)
{
 unsigned row;
 unsigned col;

 if (evtchn >= xen_evtchn_max_channels())
  return -EINVAL;

 row = EVTCHN_ROW(evtchn);
 col = EVTCHN_COL(evtchn);

 if (evtchn_to_irq[row] == ((void*)0)) {

  if (irq == -1)
   return 0;

  evtchn_to_irq[row] = (int *)get_zeroed_page(GFP_KERNEL);
  if (evtchn_to_irq[row] == ((void*)0))
   return -ENOMEM;

  clear_evtchn_to_irq_row(row);
 }

 evtchn_to_irq[row][col] = irq;
 return 0;
}
