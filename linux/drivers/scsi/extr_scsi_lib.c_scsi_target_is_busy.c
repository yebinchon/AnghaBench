
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {scalar_t__ can_queue; int target_blocked; int target_busy; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool scsi_target_is_busy(struct scsi_target *starget)
{
 if (starget->can_queue > 0) {
  if (atomic_read(&starget->target_busy) >= starget->can_queue)
   return 1;
  if (atomic_read(&starget->target_blocked) > 0)
   return 1;
 }
 return 0;
}
