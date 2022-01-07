
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cpa; int pfch; } ;
union orb {TYPE_2__ cmd; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int c64; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
struct channel_program {int initialized; TYPE_3__ orb; struct device* mdev; int ccwchain_list; } ;


 int EOPNOTSUPP ;
 int INIT_LIST_HEAD (int *) ;
 int ccwchain_handle_ccw (int ,struct channel_program*) ;
 int memcpy (TYPE_3__*,union orb*,int) ;

int cp_init(struct channel_program *cp, struct device *mdev, union orb *orb)
{
 int ret;





 if (!orb->cmd.pfch)
  return -EOPNOTSUPP;

 INIT_LIST_HEAD(&cp->ccwchain_list);
 memcpy(&cp->orb, orb, sizeof(*orb));
 cp->mdev = mdev;


 ret = ccwchain_handle_ccw(orb->cmd.cpa, cp);

 if (!ret) {
  cp->initialized = 1;




  cp->orb.cmd.c64 = 1;
 }

 return ret;
}
