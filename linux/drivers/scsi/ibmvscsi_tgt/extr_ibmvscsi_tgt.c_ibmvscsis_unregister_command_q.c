
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unit_id; } ;
struct scsi_info {int dev; int intr_lock; int flags; TYPE_1__ dds; } ;


 long ADAPT_SUCCESS ;
 long ERROR ;
 int PREP_FOR_SUSPEND_FLAGS ;
 int dev_dbg (int *,char*,long,long) ;
 int dev_err (int *,char*,...) ;
 long h_free_crq (int ) ;
 int msleep (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int ssleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static long ibmvscsis_unregister_command_q(struct scsi_info *vscsi)
{
 long qrc;
 long rc = ADAPT_SUCCESS;
 int ticks = 0;

 do {
  qrc = h_free_crq(vscsi->dds.unit_id);
  switch (qrc) {
  case 128:
   spin_lock_bh(&vscsi->intr_lock);
   vscsi->flags &= ~PREP_FOR_SUSPEND_FLAGS;
   spin_unlock_bh(&vscsi->intr_lock);
   break;

  case 136:
  case 129:
   dev_err(&vscsi->dev, "unregister_command_q: error from h_free_crq %ld\n",
    qrc);
   rc = ERROR;
   break;

  case 137:
  case 131:

   usleep_range(1000, 2000);
   ticks += 1;
   break;
  case 133:
   usleep_range(10000, 20000);
   ticks += 10;
   break;
  case 135:
   msleep(100);
   ticks += 100;
   break;
  case 130:
   ssleep(1);
   ticks += 1000;
   break;
  case 132:
   ssleep(10);
   ticks += 10000;
   break;
  case 134:
   ssleep(100);
   ticks += 100000;
   break;
  default:
   dev_err(&vscsi->dev, "unregister_command_q: unknown error %ld from h_free_crq\n",
    qrc);
   rc = ERROR;
   break;
  }





  if (ticks > 300000 && qrc != 128) {
   rc = ERROR;
   dev_err(&vscsi->dev, "Excessive wait for h_free_crq\n");
  }
 } while (qrc != 128 && rc == ADAPT_SUCCESS);

 dev_dbg(&vscsi->dev, "Freeing CRQ: phyp rc %ld, rc %ld\n", qrc, rc);

 return rc;
}
