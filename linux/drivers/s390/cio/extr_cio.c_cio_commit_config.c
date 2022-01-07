
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int schid; int schib; } ;
struct schib {int dummy; } ;
struct irb {int dummy; } ;
typedef int schib ;


 int EAGAIN ;
 int EBUSY ;
 int ENODEV ;
 int cio_apply_config (struct subchannel*,struct schib*) ;
 int cio_check_config (struct subchannel*,struct schib*) ;
 int css_sch_is_valid (struct schib*) ;
 int memcpy (int *,struct schib*,int) ;
 int msch (int ,struct schib*) ;
 scalar_t__ stsch (int ,struct schib*) ;
 int tsch (int ,struct irb*) ;
 int udelay (int) ;

int cio_commit_config(struct subchannel *sch)
{
 int ccode, retry, ret = 0;
 struct schib schib;
 struct irb irb;

 if (stsch(sch->schid, &schib) || !css_sch_is_valid(&schib))
  return -ENODEV;

 for (retry = 0; retry < 5; retry++) {

  cio_apply_config(sch, &schib);
  ccode = msch(sch->schid, &schib);
  if (ccode < 0)
   return ccode;
  switch (ccode) {
  case 0:
   if (stsch(sch->schid, &schib) ||
       !css_sch_is_valid(&schib))
    return -ENODEV;
   if (cio_check_config(sch, &schib)) {

    memcpy(&sch->schib, &schib, sizeof(schib));
    return 0;
   }
   ret = -EAGAIN;
   break;
  case 1:
   ret = -EBUSY;
   if (tsch(sch->schid, &irb))
    return ret;
   break;
  case 2:
   udelay(100);
   ret = -EBUSY;
   break;
  case 3:
   return -ENODEV;
  }
 }
 return ret;
}
