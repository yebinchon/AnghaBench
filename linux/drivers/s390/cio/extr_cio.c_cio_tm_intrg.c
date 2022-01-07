
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct subchannel {int schid; } ;
struct TYPE_4__ {int b; } ;
struct TYPE_5__ {TYPE_1__ tm; } ;
struct TYPE_6__ {TYPE_2__ orb; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 TYPE_3__* to_io_private (struct subchannel*) ;
 int xsch (int ) ;

int cio_tm_intrg(struct subchannel *sch)
{
 int cc;

 if (!to_io_private(sch)->orb.tm.b)
  return -EINVAL;
 cc = xsch(sch->schid);
 switch (cc) {
 case 0:
 case 2:
  return 0;
 case 1:
  return -EBUSY;
 default:
  return -ENODEV;
 }
}
