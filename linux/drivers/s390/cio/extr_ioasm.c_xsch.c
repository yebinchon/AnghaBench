
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;


 int __xsch (struct subchannel_id) ;
 int trace_s390_cio_xsch (struct subchannel_id,int) ;

int xsch(struct subchannel_id schid)
{
 int ccode;

 ccode = __xsch(schid);
 trace_s390_cio_xsch(schid, ccode);

 return ccode;
}
