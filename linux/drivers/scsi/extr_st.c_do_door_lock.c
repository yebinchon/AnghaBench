
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape {int door_locked; int device; } ;


 int DEBC_printk (struct scsi_tape*,char*,char*) ;
 int SCSI_REMOVAL_ALLOW ;
 int SCSI_REMOVAL_PREVENT ;
 int ST_LOCKED_EXPLICIT ;
 int ST_LOCK_FAILS ;
 int ST_UNLOCKED ;
 int scsi_set_medium_removal (int ,int ) ;

__attribute__((used)) static int do_door_lock(struct scsi_tape * STp, int do_lock)
{
 int retval;

 DEBC_printk(STp, "%socking drive door.\n", do_lock ? "L" : "Unl");

 retval = scsi_set_medium_removal(STp->device,
   do_lock ? SCSI_REMOVAL_PREVENT : SCSI_REMOVAL_ALLOW);
 if (!retval)
  STp->door_locked = do_lock ? ST_LOCKED_EXPLICIT : ST_UNLOCKED;
 else
  STp->door_locked = ST_LOCK_FAILS;
 return retval;
}
