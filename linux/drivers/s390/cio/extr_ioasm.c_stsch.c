
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;


 int __stsch (struct subchannel_id,struct schib*) ;
 int trace_s390_cio_stsch (struct subchannel_id,struct schib*,int) ;

int stsch(struct subchannel_id schid, struct schib *addr)
{
 int ccode;

 ccode = __stsch(schid, addr);
 trace_s390_cio_stsch(schid, addr, ccode);

 return ccode;
}
