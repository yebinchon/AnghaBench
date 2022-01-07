
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;


 int __csch (struct subchannel_id) ;
 int trace_s390_cio_csch (struct subchannel_id,int) ;

int csch(struct subchannel_id schid)
{
 int ccode;

 ccode = __csch(schid);
 trace_s390_cio_csch(schid, ccode);

 return ccode;
}
