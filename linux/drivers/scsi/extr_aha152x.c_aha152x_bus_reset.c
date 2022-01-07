
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int host; } ;


 int aha152x_bus_reset_host (int ) ;

__attribute__((used)) static int aha152x_bus_reset(struct scsi_cmnd *SCpnt)
{
 return aha152x_bus_reset_host(SCpnt->device->host);
}
