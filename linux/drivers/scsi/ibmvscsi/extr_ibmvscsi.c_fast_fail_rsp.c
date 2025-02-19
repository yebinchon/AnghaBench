
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct srp_event_struct {TYPE_4__* xfer_iu; struct ibmvscsi_host_data* hostdata; } ;
struct ibmvscsi_host_data {int dev; } ;
struct TYPE_5__ {int status; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct TYPE_7__ {TYPE_2__ fast_fail; } ;
struct TYPE_8__ {TYPE_3__ mad; } ;


 scalar_t__ VIOSRP_MAD_FAILED ;
 scalar_t__ VIOSRP_MAD_NOT_SUPPORTED ;
 scalar_t__ VIOSRP_MAD_SUCCESS ;
 scalar_t__ be16_to_cpu (int ) ;
 int dev_err (int ,char*,...) ;
 int send_mad_capabilities (struct ibmvscsi_host_data*) ;

__attribute__((used)) static void fast_fail_rsp(struct srp_event_struct *evt_struct)
{
 struct ibmvscsi_host_data *hostdata = evt_struct->hostdata;
 u16 status = be16_to_cpu(evt_struct->xfer_iu->mad.fast_fail.common.status);

 if (status == VIOSRP_MAD_NOT_SUPPORTED)
  dev_err(hostdata->dev, "fast_fail not supported in server\n");
 else if (status == VIOSRP_MAD_FAILED)
  dev_err(hostdata->dev, "fast_fail request failed\n");
 else if (status != VIOSRP_MAD_SUCCESS)
  dev_err(hostdata->dev, "error 0x%X enabling fast_fail\n", status);

 send_mad_capabilities(hostdata);
}
