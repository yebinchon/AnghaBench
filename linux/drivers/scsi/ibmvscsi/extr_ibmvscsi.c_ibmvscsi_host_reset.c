
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int dev; } ;
struct Scsi_Host {int dummy; } ;


 int dev_info (int ,char*) ;
 int ibmvscsi_reset_host (struct ibmvscsi_host_data*) ;
 struct ibmvscsi_host_data* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int ibmvscsi_host_reset(struct Scsi_Host *shost, int reset_type)
{
 struct ibmvscsi_host_data *hostdata = shost_priv(shost);

 dev_info(hostdata->dev, "Initiating adapter reset!\n");
 ibmvscsi_reset_host(hostdata);

 return 0;
}
