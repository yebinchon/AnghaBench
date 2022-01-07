
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nvmet_req {int data_len; TYPE_1__* sq; } ;
struct nvmet_ctrl {int nr_changed_ns; int lock; int changed_ns_list; } ;
typedef int __le32 ;
struct TYPE_2__ {struct nvmet_ctrl* ctrl; } ;


 int NVME_AEN_BIT_NS_ATTR ;
 int NVME_MAX_CHANGED_NAMESPACES ;
 scalar_t__ NVME_SC_INTERNAL ;
 int U32_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmet_clear_aen_bit (struct nvmet_req*,int ) ;
 scalar_t__ nvmet_copy_to_sgl (struct nvmet_req*,int ,int ,size_t) ;
 int nvmet_req_complete (struct nvmet_req*,scalar_t__) ;
 scalar_t__ nvmet_zero_sgl (struct nvmet_req*,size_t,int) ;

__attribute__((used)) static void nvmet_execute_get_log_changed_ns(struct nvmet_req *req)
{
 struct nvmet_ctrl *ctrl = req->sq->ctrl;
 u16 status = NVME_SC_INTERNAL;
 size_t len;

 if (req->data_len != NVME_MAX_CHANGED_NAMESPACES * sizeof(__le32))
  goto out;

 mutex_lock(&ctrl->lock);
 if (ctrl->nr_changed_ns == U32_MAX)
  len = sizeof(__le32);
 else
  len = ctrl->nr_changed_ns * sizeof(__le32);
 status = nvmet_copy_to_sgl(req, 0, ctrl->changed_ns_list, len);
 if (!status)
  status = nvmet_zero_sgl(req, len, req->data_len - len);
 ctrl->nr_changed_ns = 0;
 nvmet_clear_aen_bit(req, NVME_AEN_BIT_NS_ATTR);
 mutex_unlock(&ctrl->lock);
out:
 nvmet_req_complete(req, status);
}
