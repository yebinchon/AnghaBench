
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct Scsi_Host {int this_id; } ;
struct TYPE_8__ {int * syncrate; } ;
struct TYPE_6__ {int phase; } ;
struct TYPE_7__ {TYPE_1__ SCp; } ;


 int CLRBUSFREE ;
 int CLRPHASECHG ;
 int CLRSELDI ;
 TYPE_2__* CURRENT_SC ;
 int DISCONNECTED_SC ;
 int DO_LOCK (unsigned long) ;
 int DO_UNLOCK (unsigned long) ;
 int GETPORT (int ) ;
 TYPE_4__* HOSTDATA (struct Scsi_Host*) ;
 int ISSUE_SC ;
 int KERN_ERR ;
 int KERN_INFO ;
 int OID_ ;
 int RECONN_TARGET ;
 int SCSIID ;
 int SCSISEQ ;
 int SCSISIG ;
 int SELID ;
 int SETPORT (int ,int) ;
 int SETRATE (int ) ;
 int SSTAT0 ;
 int SSTAT1 ;
 int append_SC (int *,TYPE_2__*) ;
 int not_issued ;
 int scmd_printk (int ,TYPE_2__*,char*) ;
 int shost_printk (int ,struct Scsi_Host*,char*,int) ;

__attribute__((used)) static void seldi_run(struct Scsi_Host *shpnt)
{
 int selid;
 int target;
 unsigned long flags;

 SETPORT(SCSISIG, 0);
 SETPORT(SSTAT0, CLRSELDI);
 SETPORT(SSTAT1, CLRBUSFREE);
 SETPORT(SSTAT1, CLRPHASECHG);

 if(CURRENT_SC) {
  if(!(CURRENT_SC->SCp.phase & not_issued))
   scmd_printk(KERN_ERR, CURRENT_SC,
        "command should not have been issued yet\n");

  DO_LOCK(flags);
  append_SC(&ISSUE_SC, CURRENT_SC);
  DO_UNLOCK(flags);

  CURRENT_SC = ((void*)0);
 }

 if (!DISCONNECTED_SC)
  return;

 RECONN_TARGET=-1;

 selid = GETPORT(SELID) & ~(1 << shpnt->this_id);

 if (selid==0) {
  shost_printk(KERN_INFO, shpnt,
        "target id unknown (%02x)\n", selid);
  return;
 }

 for(target=7; !(selid & (1 << target)); target--)
  ;

 if(selid & ~(1 << target)) {
  shost_printk(KERN_INFO, shpnt,
        "multiple targets reconnected (%02x)\n", selid);
 }


 SETPORT(SCSIID, (shpnt->this_id << OID_) | target);
 SETPORT(SCSISEQ, 0);

 SETRATE(HOSTDATA(shpnt)->syncrate[target]);

 RECONN_TARGET=target;
}
