
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_event {int fired; scalar_t__ armed; } ;


 scalar_t__ BELL2 ;
 int dsb (int ) ;
 scalar_t__ g_regs ;
 int sy ;
 int wmb () ;
 int writel (int ,scalar_t__) ;

void
remote_event_signal(struct remote_event *event)
{
 wmb();

 event->fired = 1;

 dsb(sy);

 if (event->armed)
  writel(0, g_regs + BELL2);
}
