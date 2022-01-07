
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EVTCHN_ROW (int ) ;
 int clear_evtchn_to_irq_row (unsigned int) ;
 int ** evtchn_to_irq ;
 int xen_evtchn_max_channels () ;

__attribute__((used)) static void clear_evtchn_to_irq_all(void)
{
 unsigned row;

 for (row = 0; row < EVTCHN_ROW(xen_evtchn_max_channels()); row++) {
  if (evtchn_to_irq[row] == ((void*)0))
   continue;
  clear_evtchn_to_irq_row(row);
 }
}
