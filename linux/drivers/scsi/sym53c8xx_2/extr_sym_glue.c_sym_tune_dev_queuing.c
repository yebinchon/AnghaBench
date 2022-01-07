
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct sym_tcb {TYPE_1__* starget; } ;
struct TYPE_4__ {scalar_t__ reqtags; scalar_t__ scdev_depth; } ;
struct sym_lcb {TYPE_2__ s; } ;
struct TYPE_3__ {int dev; } ;


 int dev_info (int *,char*,char*,scalar_t__) ;
 struct sym_lcb* sym_lp (struct sym_tcb*,int) ;

__attribute__((used)) static void sym_tune_dev_queuing(struct sym_tcb *tp, int lun, u_short reqtags)
{
 struct sym_lcb *lp = sym_lp(tp, lun);
 u_short oldtags;

 if (!lp)
  return;

 oldtags = lp->s.reqtags;

 if (reqtags > lp->s.scdev_depth)
  reqtags = lp->s.scdev_depth;

 lp->s.reqtags = reqtags;

 if (reqtags != oldtags) {
  dev_info(&tp->starget->dev,
           "tagged command queuing %s, command queue depth %d.\n",
            lp->s.reqtags ? "enabled" : "disabled", reqtags);
 }
}
