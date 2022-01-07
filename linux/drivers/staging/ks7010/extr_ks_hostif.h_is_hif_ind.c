
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short HIF_EVENT_MASK ;

__attribute__((used)) static inline bool is_hif_ind(unsigned short event)
{
 return (((event & HIF_EVENT_MASK) == HIF_EVENT_MASK) &&
  (((event & ~HIF_EVENT_MASK) == 0x0001) ||
   ((event & ~HIF_EVENT_MASK) == 0x0006) ||
   ((event & ~HIF_EVENT_MASK) == 0x000C) ||
   ((event & ~HIF_EVENT_MASK) == 0x0011) ||
   ((event & ~HIF_EVENT_MASK) == 0x0012)));
}
