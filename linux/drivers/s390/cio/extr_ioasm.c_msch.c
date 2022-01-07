
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct schib {int dummy; } ;


 int __msch (struct subchannel_id,struct schib*) ;
 int trace_s390_cio_msch (struct subchannel_id,struct schib*,int) ;

int msch(struct subchannel_id schid, struct schib *addr)
{
 int ccode;

 ccode = __msch(schid, addr);
 trace_s390_cio_msch(schid, addr, ccode);

 return ccode;
}
