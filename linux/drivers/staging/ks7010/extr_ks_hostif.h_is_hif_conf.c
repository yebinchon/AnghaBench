
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short HIF_EVENT_MASK ;
 int is_hif_ind (unsigned short) ;

__attribute__((used)) static inline bool is_hif_conf(unsigned short event)
{
 return (((event & HIF_EVENT_MASK) == HIF_EVENT_MASK) &&
  ((event & ~HIF_EVENT_MASK) > 0x0000) &&
  ((event & ~HIF_EVENT_MASK) < 0x0012) &&
  !is_hif_ind(event));
}
