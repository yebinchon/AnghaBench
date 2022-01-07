
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct irb {int dummy; } ;


 int __tsch (struct subchannel_id,struct irb*) ;
 int trace_s390_cio_tsch (struct subchannel_id,struct irb*,int) ;

int tsch(struct subchannel_id schid, struct irb *addr)
{
 int ccode;

 ccode = __tsch(schid, addr);
 trace_s390_cio_tsch(schid, addr, ccode);

 return ccode;
}
