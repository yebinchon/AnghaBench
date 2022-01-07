
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int zoned; TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ TYPE_ZBC ;

__attribute__((used)) static inline int sd_is_zoned(struct scsi_disk *sdkp)
{
 return sdkp->zoned == 1 || sdkp->device->type == TYPE_ZBC;
}
