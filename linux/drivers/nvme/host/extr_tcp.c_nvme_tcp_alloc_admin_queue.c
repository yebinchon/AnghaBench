
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int dummy; } ;


 int NVME_AQ_DEPTH ;
 int nvme_tcp_alloc_async_req (int ) ;
 int nvme_tcp_alloc_queue (struct nvme_ctrl*,int ,int ) ;
 int nvme_tcp_free_queue (struct nvme_ctrl*,int ) ;
 int to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static int nvme_tcp_alloc_admin_queue(struct nvme_ctrl *ctrl)
{
 int ret;

 ret = nvme_tcp_alloc_queue(ctrl, 0, NVME_AQ_DEPTH);
 if (ret)
  return ret;

 ret = nvme_tcp_alloc_async_req(to_tcp_ctrl(ctrl));
 if (ret)
  goto out_free_queue;

 return 0;

out_free_queue:
 nvme_tcp_free_queue(ctrl, 0);
 return ret;
}
