
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;


 int __rsch (struct subchannel_id) ;
 int trace_s390_cio_rsch (struct subchannel_id,int) ;

int rsch(struct subchannel_id schid)
{
 int ccode;

 ccode = __rsch(schid);
 trace_s390_cio_rsch(schid, ccode);

 return ccode;
}
