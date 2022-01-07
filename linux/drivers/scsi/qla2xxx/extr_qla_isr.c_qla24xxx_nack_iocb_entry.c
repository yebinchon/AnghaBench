
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct req_que {int dummy; } ;
struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_7__ {TYPE_1__ isp2x; } ;
struct nack_to_isp {TYPE_2__ u; } ;
struct TYPE_8__ {int (* done ) (TYPE_3__*,int) ;} ;
typedef TYPE_3__ srb_t ;
typedef int scsi_qla_host_t ;


 int NOTIFY_ACK_SUCCESS ;
 int QLA_FUNCTION_FAILED ;
 scalar_t__ cpu_to_le16 (int ) ;
 TYPE_3__* qla2x00_get_sp_from_handle (int *,char const*,struct req_que*,struct nack_to_isp*) ;
 int stub1 (TYPE_3__*,int) ;

__attribute__((used)) static void
qla24xxx_nack_iocb_entry(scsi_qla_host_t *vha, struct req_que *req,
    struct nack_to_isp *pkt)
{
 const char func[] = "nack";
 srb_t *sp;
 int res = 0;

 sp = qla2x00_get_sp_from_handle(vha, func, req, pkt);
 if (!sp)
  return;

 if (pkt->u.isp2x.status != cpu_to_le16(NOTIFY_ACK_SUCCESS))
  res = QLA_FUNCTION_FAILED;

 sp->done(sp, res);
}
