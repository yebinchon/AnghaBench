
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct scsi_qla_host {int dummy; } ;
struct qla_work_evt {int type; int flags; int list; } ;
typedef enum qla_work_type { ____Placeholder_qla_work_type } qla_work_type ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int QLA_EVT_FLAG_FREE ;
 int QLA_VHA_MARK_BUSY (struct scsi_qla_host*,scalar_t__) ;
 int QLA_VHA_MARK_NOT_BUSY (struct scsi_qla_host*) ;
 struct qla_work_evt* kzalloc (int,int ) ;

struct qla_work_evt *
qla2x00_alloc_work(struct scsi_qla_host *vha, enum qla_work_type type)
{
 struct qla_work_evt *e;
 uint8_t bail;

 QLA_VHA_MARK_BUSY(vha, bail);
 if (bail)
  return ((void*)0);

 e = kzalloc(sizeof(struct qla_work_evt), GFP_ATOMIC);
 if (!e) {
  QLA_VHA_MARK_NOT_BUSY(vha);
  return ((void*)0);
 }

 INIT_LIST_HEAD(&e->list);
 e->type = type;
 e->flags = QLA_EVT_FLAG_FREE;
 return e;
}
