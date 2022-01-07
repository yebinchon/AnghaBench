
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ os_type; } ;
struct scsi_info {TYPE_1__ client_data; scalar_t__ client_cap; } ;



__attribute__((used)) static void ibmvscsis_delete_client_info(struct scsi_info *vscsi,
      bool client_closed)
{
 vscsi->client_cap = 0;






 if (client_closed)
  vscsi->client_data.os_type = 0;
}
