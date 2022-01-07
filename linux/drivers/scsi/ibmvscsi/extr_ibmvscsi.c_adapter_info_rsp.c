
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct srp_event_struct {TYPE_4__* xfer_iu; struct ibmvscsi_host_data* hostdata; } ;
struct TYPE_12__ {scalar_t__ os_type; int srp_version; scalar_t__* port_max_txu; scalar_t__ partition_number; int partition_name; } ;
struct ibmvscsi_host_data {TYPE_6__ madapter_info; TYPE_5__* host; int dev; } ;
struct TYPE_11__ {int max_sectors; int sg_tablesize; } ;
struct TYPE_7__ {int status; } ;
struct TYPE_8__ {TYPE_1__ common; } ;
struct TYPE_9__ {TYPE_2__ adapter_info; } ;
struct TYPE_10__ {TYPE_3__ mad; } ;


 int MAX_INDIRECT_BUFS ;
 int SRP_MAD_OS_AIX ;
 int be32_to_cpu (scalar_t__) ;
 int dev_err (int ,char*,int ) ;
 int dev_info (int ,char*,int ,int ,int,int,int) ;
 int enable_fast_fail (struct ibmvscsi_host_data*) ;
 int send_srp_login (struct ibmvscsi_host_data*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void adapter_info_rsp(struct srp_event_struct *evt_struct)
{
 struct ibmvscsi_host_data *hostdata = evt_struct->hostdata;

 if (evt_struct->xfer_iu->mad.adapter_info.common.status) {
  dev_err(hostdata->dev, "error %d getting adapter info\n",
   evt_struct->xfer_iu->mad.adapter_info.common.status);
 } else {
  dev_info(hostdata->dev, "host srp version: %s, "
    "host partition %s (%d), OS %d, max io %u\n",
    hostdata->madapter_info.srp_version,
    hostdata->madapter_info.partition_name,
    be32_to_cpu(hostdata->madapter_info.partition_number),
    be32_to_cpu(hostdata->madapter_info.os_type),
    be32_to_cpu(hostdata->madapter_info.port_max_txu[0]));

  if (hostdata->madapter_info.port_max_txu[0])
   hostdata->host->max_sectors =
    be32_to_cpu(hostdata->madapter_info.port_max_txu[0]) >> 9;

  if (be32_to_cpu(hostdata->madapter_info.os_type) == SRP_MAD_OS_AIX &&
      strcmp(hostdata->madapter_info.srp_version, "1.6a") <= 0) {
   dev_err(hostdata->dev, "host (Ver. %s) doesn't support large transfers\n",
    hostdata->madapter_info.srp_version);
   dev_err(hostdata->dev, "limiting scatterlists to %d\n",
    MAX_INDIRECT_BUFS);
   hostdata->host->sg_tablesize = MAX_INDIRECT_BUFS;
  }

  if (be32_to_cpu(hostdata->madapter_info.os_type) == SRP_MAD_OS_AIX) {
   enable_fast_fail(hostdata);
   return;
  }
 }

 send_srp_login(hostdata);
}
