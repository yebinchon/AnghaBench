
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_rdma_device {size_t srq_size; struct ib_srq* srq_cmds; struct ib_srq* srq; int pd; scalar_t__ inline_page_count; } ;
struct TYPE_2__ {size_t max_wr; scalar_t__ srq_limit; scalar_t__ max_sge; } ;
struct ib_srq_init_attr {int srq_type; TYPE_1__ attr; int * member_0; } ;
struct ib_srq {int dummy; } ;


 int IB_SRQT_BASIC ;
 scalar_t__ IS_ERR (struct ib_srq*) ;
 int PTR_ERR (struct ib_srq*) ;
 struct ib_srq* ib_create_srq (int ,struct ib_srq_init_attr*) ;
 int ib_destroy_srq (struct ib_srq*) ;
 struct ib_srq* nvmet_rdma_alloc_cmds (struct nvmet_rdma_device*,size_t,int) ;
 int nvmet_rdma_free_cmds (struct nvmet_rdma_device*,struct ib_srq*,size_t,int) ;
 int nvmet_rdma_post_recv (struct nvmet_rdma_device*,struct ib_srq*) ;
 int pr_info (char*) ;

__attribute__((used)) static int nvmet_rdma_init_srq(struct nvmet_rdma_device *ndev)
{
 struct ib_srq_init_attr srq_attr = { ((void*)0), };
 struct ib_srq *srq;
 size_t srq_size;
 int ret, i;

 srq_size = 4095;

 srq_attr.attr.max_wr = srq_size;
 srq_attr.attr.max_sge = 1 + ndev->inline_page_count;
 srq_attr.attr.srq_limit = 0;
 srq_attr.srq_type = IB_SRQT_BASIC;
 srq = ib_create_srq(ndev->pd, &srq_attr);
 if (IS_ERR(srq)) {




  pr_info("SRQ requested but not supported.\n");
  return 0;
 }

 ndev->srq_cmds = nvmet_rdma_alloc_cmds(ndev, srq_size, 0);
 if (IS_ERR(ndev->srq_cmds)) {
  ret = PTR_ERR(ndev->srq_cmds);
  goto out_destroy_srq;
 }

 ndev->srq = srq;
 ndev->srq_size = srq_size;

 for (i = 0; i < srq_size; i++) {
  ret = nvmet_rdma_post_recv(ndev, &ndev->srq_cmds[i]);
  if (ret)
   goto out_free_cmds;
 }

 return 0;

out_free_cmds:
 nvmet_rdma_free_cmds(ndev, ndev->srq_cmds, ndev->srq_size, 0);
out_destroy_srq:
 ib_destroy_srq(srq);
 return ret;
}
