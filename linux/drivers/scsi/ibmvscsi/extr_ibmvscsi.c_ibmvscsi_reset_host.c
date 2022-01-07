
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvscsi_host_data {int work_wait_q; int action; int request_limit; int host; } ;


 int DID_ERROR ;
 int IBMVSCSI_HOST_ACTION_RESET ;
 int atomic_set (int *,int ) ;
 int purge_requests (struct ibmvscsi_host_data*,int ) ;
 int scsi_block_requests (int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void ibmvscsi_reset_host(struct ibmvscsi_host_data *hostdata)
{
 scsi_block_requests(hostdata->host);
 atomic_set(&hostdata->request_limit, 0);

 purge_requests(hostdata, DID_ERROR);
 hostdata->action = IBMVSCSI_HOST_ACTION_RESET;
 wake_up(&hostdata->work_wait_q);
}
