
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {scalar_t__ capacity; scalar_t__ media_present; TYPE_1__* device; } ;
struct TYPE_2__ {int changed; scalar_t__ removable; } ;



__attribute__((used)) static void set_media_not_present(struct scsi_disk *sdkp)
{
 if (sdkp->media_present)
  sdkp->device->changed = 1;

 if (sdkp->device->removable) {
  sdkp->media_present = 0;
  sdkp->capacity = 0;
 }
}
