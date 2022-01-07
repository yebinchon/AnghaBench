
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;


 int __hsch (struct subchannel_id) ;
 int trace_s390_cio_hsch (struct subchannel_id,int) ;

int hsch(struct subchannel_id schid)
{
 int ccode;

 ccode = __hsch(schid);
 trace_s390_cio_hsch(schid, ccode);

 return ccode;
}
