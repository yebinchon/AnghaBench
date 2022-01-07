
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ can_queue; scalar_t__ host_self_blocked; int host_blocked; int host_busy; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool scsi_host_is_busy(struct Scsi_Host *shost)
{
 if (shost->can_queue > 0 &&
     atomic_read(&shost->host_busy) >= shost->can_queue)
  return 1;
 if (atomic_read(&shost->host_blocked) > 0)
  return 1;
 if (shost->host_self_blocked)
  return 1;
 return 0;
}
