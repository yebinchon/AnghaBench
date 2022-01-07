
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xen_mce {int dummy; } ;
struct TYPE_2__ {unsigned int next; unsigned int entry; int flags; } ;


 unsigned int XEN_MCE_LOG_LEN ;
 int XEN_MCE_OVERFLOW ;
 int memcpy (unsigned int,struct xen_mce*,int) ;
 int set_bit (int ,unsigned long*) ;
 TYPE_1__ xen_mcelog ;

__attribute__((used)) static void xen_mce_log(struct xen_mce *mce)
{
 unsigned entry;

 entry = xen_mcelog.next;






 if (entry >= XEN_MCE_LOG_LEN) {
  set_bit(XEN_MCE_OVERFLOW,
   (unsigned long *)&xen_mcelog.flags);
  return;
 }

 memcpy(xen_mcelog.entry + entry, mce, sizeof(struct xen_mce));

 xen_mcelog.next++;
}
