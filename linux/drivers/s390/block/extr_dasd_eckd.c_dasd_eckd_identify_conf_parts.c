
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vd_sneq {int dummy; } ;
struct TYPE_2__ {int identifier; } ;
struct dasd_sneq {int format; int res1; TYPE_1__ flags; } ;
struct dasd_ned {int dummy; } ;
struct dasd_gneq {int dummy; } ;
struct dasd_eckd_private {int conf_len; struct dasd_gneq* gneq; struct vd_sneq* vdsneq; struct dasd_sneq* sneq; struct dasd_ned* ned; scalar_t__ conf_data; } ;


 int EINVAL ;

__attribute__((used)) static int dasd_eckd_identify_conf_parts(struct dasd_eckd_private *private)
{

 struct dasd_sneq *sneq;
 int i, count;

 private->ned = ((void*)0);
 private->sneq = ((void*)0);
 private->vdsneq = ((void*)0);
 private->gneq = ((void*)0);
 count = private->conf_len / sizeof(struct dasd_sneq);
 sneq = (struct dasd_sneq *)private->conf_data;
 for (i = 0; i < count; ++i) {
  if (sneq->flags.identifier == 1 && sneq->format == 1)
   private->sneq = sneq;
  else if (sneq->flags.identifier == 1 && sneq->format == 4)
   private->vdsneq = (struct vd_sneq *)sneq;
  else if (sneq->flags.identifier == 2)
   private->gneq = (struct dasd_gneq *)sneq;
  else if (sneq->flags.identifier == 3 && sneq->res1 == 1)
   private->ned = (struct dasd_ned *)sneq;
  sneq++;
 }
 if (!private->ned || !private->gneq) {
  private->ned = ((void*)0);
  private->sneq = ((void*)0);
  private->vdsneq = ((void*)0);
  private->gneq = ((void*)0);
  return -EINVAL;
 }
 return 0;

}
