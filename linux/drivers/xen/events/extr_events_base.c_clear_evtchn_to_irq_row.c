
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EVTCHN_PER_ROW ;
 int** evtchn_to_irq ;

__attribute__((used)) static void clear_evtchn_to_irq_row(unsigned row)
{
 unsigned col;

 for (col = 0; col < EVTCHN_PER_ROW; col++)
  evtchn_to_irq[row][col] = -1;
}
