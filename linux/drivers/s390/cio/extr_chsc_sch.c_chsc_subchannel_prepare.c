
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int schid; } ;
struct schib {int scsw; } ;


 int EAGAIN ;
 scalar_t__ scsw_stctl (int *) ;
 int stsch (int ,struct schib*) ;

__attribute__((used)) static int chsc_subchannel_prepare(struct subchannel *sch)
{
 int cc;
 struct schib schib;





 cc = stsch(sch->schid, &schib);
 if (!cc && scsw_stctl(&schib.scsw))
  return -EAGAIN;
 return 0;
}
