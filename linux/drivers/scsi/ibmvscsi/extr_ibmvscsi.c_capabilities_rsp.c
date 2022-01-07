
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct srp_event_struct {TYPE_2__* xfer_iu; struct ibmvscsi_host_data* hostdata; } ;
struct TYPE_14__ {scalar_t__ server_support; } ;
struct TYPE_15__ {TYPE_5__ common; } ;
struct TYPE_12__ {scalar_t__ server_support; } ;
struct TYPE_13__ {TYPE_3__ common; } ;
struct TYPE_16__ {TYPE_6__ reserve; TYPE_4__ migration; } ;
struct ibmvscsi_host_data {int dev; TYPE_7__ caps; } ;
struct TYPE_17__ {int status; } ;
struct TYPE_18__ {TYPE_8__ common; } ;
struct TYPE_10__ {TYPE_9__ capabilities; } ;
struct TYPE_11__ {TYPE_1__ mad; } ;


 int SERVER_SUPPORTS_CAP ;
 scalar_t__ client_reserve ;
 scalar_t__ cpu_to_be16 (int ) ;
 int dev_err (int ,char*,int ) ;
 int dev_info (int ,char*) ;
 int send_srp_login (struct ibmvscsi_host_data*) ;

__attribute__((used)) static void capabilities_rsp(struct srp_event_struct *evt_struct)
{
 struct ibmvscsi_host_data *hostdata = evt_struct->hostdata;

 if (evt_struct->xfer_iu->mad.capabilities.common.status) {
  dev_err(hostdata->dev, "error 0x%X getting capabilities info\n",
   evt_struct->xfer_iu->mad.capabilities.common.status);
 } else {
  if (hostdata->caps.migration.common.server_support !=
      cpu_to_be16(SERVER_SUPPORTS_CAP))
   dev_info(hostdata->dev, "Partition migration not supported\n");

  if (client_reserve) {
   if (hostdata->caps.reserve.common.server_support ==
       cpu_to_be16(SERVER_SUPPORTS_CAP))
    dev_info(hostdata->dev, "Client reserve enabled\n");
   else
    dev_info(hostdata->dev, "Client reserve not supported\n");
  }
 }

 send_srp_login(hostdata);
}
