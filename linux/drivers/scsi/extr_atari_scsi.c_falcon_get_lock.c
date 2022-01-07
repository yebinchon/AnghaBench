
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int can_queue; } ;


 scalar_t__ IS_A_TT () ;
 scalar_t__ in_interrupt () ;
 int scsi_falcon_intr ;
 scalar_t__ stdma_is_locked_by (int ) ;
 int stdma_lock (int ,struct Scsi_Host*) ;
 int stdma_try_lock (int ,struct Scsi_Host*) ;

__attribute__((used)) static int falcon_get_lock(struct Scsi_Host *instance)
{
 if (IS_A_TT())
  return 1;

 if (stdma_is_locked_by(scsi_falcon_intr) &&
     instance->hostt->can_queue > 1)
  return 1;

 if (in_interrupt())
  return stdma_try_lock(scsi_falcon_intr, instance);

 stdma_lock(scsi_falcon_intr, instance);
 return 1;
}
