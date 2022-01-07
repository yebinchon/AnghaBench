
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union orb {int dummy; } orb ;
struct subchannel_id {int dummy; } ;


 int __ssch (struct subchannel_id,union orb*) ;
 int trace_s390_cio_ssch (struct subchannel_id,union orb*,int) ;

int ssch(struct subchannel_id schid, union orb *addr)
{
 int ccode;

 ccode = __ssch(schid, addr);
 trace_s390_cio_ssch(schid, addr, ccode);

 return ccode;
}
