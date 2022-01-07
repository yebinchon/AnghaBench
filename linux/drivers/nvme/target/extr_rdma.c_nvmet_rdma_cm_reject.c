
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {int dummy; } ;
struct nvme_rdma_cm_rej {void* sts; void* recfmt; } ;
typedef int rej ;
typedef enum nvme_rdma_cm_status { ____Placeholder_nvme_rdma_cm_status } nvme_rdma_cm_status ;


 int NVME_RDMA_CM_FMT_1_0 ;
 void* cpu_to_le16 (int) ;
 int nvme_rdma_cm_msg (int) ;
 int pr_debug (char*,int,int ) ;
 int rdma_reject (struct rdma_cm_id*,void*,int) ;

__attribute__((used)) static int nvmet_rdma_cm_reject(struct rdma_cm_id *cm_id,
    enum nvme_rdma_cm_status status)
{
 struct nvme_rdma_cm_rej rej;

 pr_debug("rejecting connect request: status %d (%s)\n",
   status, nvme_rdma_cm_msg(status));

 rej.recfmt = cpu_to_le16(NVME_RDMA_CM_FMT_1_0);
 rej.sts = cpu_to_le16(status);

 return rdma_reject(cm_id, (void *)&rej, sizeof(rej));
}
