
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int dummy; } ;
struct TYPE_3__ {int * port_id; int port_name; } ;
struct TYPE_4__ {TYPE_1__ isp24; } ;
struct imm_ntfy_from_isp {TYPE_2__ u; } ;
struct qlt_plogi_ack_t {struct fc_port* fcport; int ref_count; struct imm_ntfy_from_isp iocb; } ;
struct fc_port {int disc_state; struct qlt_plogi_ack_t** plogi_link; int port_name; } ;
typedef enum qlt_plogi_link_t { ____Placeholder_qlt_plogi_link_t } qlt_plogi_link_t ;




 int QLT_PLOGI_LINK_CONFLICT ;
 int QLT_PLOGI_LINK_SAME_WWN ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,struct fc_port*,int,int ,int ,int ,int ,int ,int ,struct qlt_plogi_ack_t*,int) ;
 int ql_dbg_tgt_mgt ;
 int qlt_plogi_ack_unref (struct scsi_qla_host*,struct qlt_plogi_ack_t*) ;

void
qlt_plogi_ack_link(struct scsi_qla_host *vha, struct qlt_plogi_ack_t *pla,
    struct fc_port *sess, enum qlt_plogi_link_t link)
{
 struct imm_ntfy_from_isp *iocb = &pla->iocb;

 pla->ref_count++;

 ql_dbg(ql_dbg_tgt_mgt, vha, 0xf097,
  "Linking sess %p [%d] wwn %8phC with PLOGI ACK to wwn %8phC"
  " s_id %02x:%02x:%02x, ref=%d pla %p link %d\n",
  sess, link, sess->port_name,
  iocb->u.isp24.port_name, iocb->u.isp24.port_id[2],
  iocb->u.isp24.port_id[1], iocb->u.isp24.port_id[0],
  pla->ref_count, pla, link);

 if (link == QLT_PLOGI_LINK_CONFLICT) {
  switch (sess->disc_state) {
  case 129:
  case 128:
   pla->ref_count--;
   return;
  default:
   break;
  }
 }

 if (sess->plogi_link[link])
  qlt_plogi_ack_unref(vha, sess->plogi_link[link]);

 if (link == QLT_PLOGI_LINK_SAME_WWN)
  pla->fcport = sess;

 sess->plogi_link[link] = pla;
}
