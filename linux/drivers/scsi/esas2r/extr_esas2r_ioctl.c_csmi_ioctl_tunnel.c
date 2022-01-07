
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union atto_ioctl_csmi {int dummy; } atto_ioctl_csmi ;
typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct esas2r_sg_context {int length; } ;
struct esas2r_request {int comp_cb; int aux_req_cb; union atto_ioctl_csmi* aux_req_cx; TYPE_3__* vrq; } ;
struct esas2r_adapter {int flags; } ;
struct TYPE_4__ {scalar_t__ lun; int target_id; int ctrl_code; } ;
struct atto_vda_ioctl_req {TYPE_1__ csmi; int sge; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ scsi; struct atto_vda_ioctl_req ioctl; } ;


 int AF_DEGRADED_MODE ;
 int VDA_IOCTL_CSMI ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int esas2r_build_ioctl_req (struct esas2r_adapter*,struct esas2r_request*,int ,int ) ;
 int esas2r_build_sg_list (struct esas2r_adapter*,struct esas2r_request*,struct esas2r_sg_context*) ;
 int esas2r_csmi_ioctl_tunnel_comp_cb ;
 int esas2r_sgc_init (struct esas2r_sg_context*,struct esas2r_adapter*,struct esas2r_request*,int ) ;
 int esas2r_start_request (struct esas2r_adapter*,struct esas2r_request*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool csmi_ioctl_tunnel(struct esas2r_adapter *a,
         union atto_ioctl_csmi *ci,
         struct esas2r_request *rq,
         struct esas2r_sg_context *sgc,
         u32 ctrl_code,
         u16 target_id)
{
 struct atto_vda_ioctl_req *ioctl = &rq->vrq->ioctl;

 if (test_bit(AF_DEGRADED_MODE, &a->flags))
  return 0;

 esas2r_sgc_init(sgc, a, rq, rq->vrq->ioctl.sge);
 esas2r_build_ioctl_req(a, rq, sgc->length, VDA_IOCTL_CSMI);
 ioctl->csmi.ctrl_code = cpu_to_le32(ctrl_code);
 ioctl->csmi.target_id = cpu_to_le16(target_id);
 ioctl->csmi.lun = (u8)le32_to_cpu(rq->vrq->scsi.flags);





 rq->aux_req_cx = ci;
 rq->aux_req_cb = rq->comp_cb;
 rq->comp_cb = esas2r_csmi_ioctl_tunnel_comp_cb;

 if (!esas2r_build_sg_list(a, rq, sgc))
  return 0;

 esas2r_start_request(a, rq);
 return 1;
}
