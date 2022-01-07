
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_4__ {int node_name; int port_name; int fc4_type; void* pla; int id; } ;
struct TYPE_3__ {TYPE_2__ new_sess; } ;
struct qla_work_evt {TYPE_1__ u; } ;
typedef int port_id_t ;


 int QLA_EVT_NEW_SESS ;
 int QLA_FUNCTION_FAILED ;
 int WWN_SIZE ;
 int memcpy (int ,int *,int ) ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;

int qla24xx_post_newsess_work(struct scsi_qla_host *vha, port_id_t *id,
    u8 *port_name, u8 *node_name, void *pla, u8 fc4_type)
{
 struct qla_work_evt *e;

 e = qla2x00_alloc_work(vha, QLA_EVT_NEW_SESS);
 if (!e)
  return QLA_FUNCTION_FAILED;

 e->u.new_sess.id = *id;
 e->u.new_sess.pla = pla;
 e->u.new_sess.fc4_type = fc4_type;
 memcpy(e->u.new_sess.port_name, port_name, WWN_SIZE);
 if (node_name)
  memcpy(e->u.new_sess.node_name, node_name, WWN_SIZE);

 return qla2x00_post_work(vha, e);
}
