
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int lun; int target_id; } ;
struct TYPE_9__ {TYPE_3__ csmi; } ;
struct TYPE_10__ {TYPE_4__ ioctl_rsp; } ;
struct esas2r_request {int (* aux_req_cb ) (struct esas2r_adapter*,struct esas2r_request*) ;TYPE_5__ func_rsp; TYPE_2__* vrq; int target_id; } ;
struct esas2r_adapter {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ scsi; } ;


 int cpu_to_le32 (int ) ;
 int le16_to_cpu (int ) ;
 int stub1 (struct esas2r_adapter*,struct esas2r_request*) ;

__attribute__((used)) static void esas2r_csmi_ioctl_tunnel_comp_cb(struct esas2r_adapter *a,
          struct esas2r_request *rq)
{
 rq->target_id = le16_to_cpu(rq->func_rsp.ioctl_rsp.csmi.target_id);
 rq->vrq->scsi.flags |= cpu_to_le32(rq->func_rsp.ioctl_rsp.csmi.lun);


 (*rq->aux_req_cb)(a, rq);
}
