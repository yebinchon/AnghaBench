
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct iscsi_tm {int opcode; int rtt; int lun; } ;
struct iscsi_task {int hdr_itt; int itt; TYPE_2__* sc; struct iscsi_conn* conn; } ;
struct iscsi_conn {scalar_t__ tmf_state; TYPE_3__* session; struct iscsi_tm tmhdr; } ;
struct TYPE_6__ {int fast_abort; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int lun; } ;


 int EACCES ;
 int ISCSI_DBG_SESSION (TYPE_3__*,char*,int ,int ) ;
 int ISCSI_OPCODE_MASK ;
 int ISCSI_OP_SCSI_DATA_OUT ;
 int ISCSI_OP_SCSI_TMFUNC ;



 int ISCSI_TM_FUNC_VALUE (struct iscsi_tm*) ;
 int KERN_INFO ;
 scalar_t__ TMF_INITIAL ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,int,int ,int ) ;
 int scsilun_to_int (int *) ;

__attribute__((used)) static int iscsi_check_tmf_restrictions(struct iscsi_task *task, int opcode)
{
 struct iscsi_conn *conn = task->conn;
 struct iscsi_tm *tmf = &conn->tmhdr;
 u64 hdr_lun;

 if (conn->tmf_state == TMF_INITIAL)
  return 0;

 if ((tmf->opcode & ISCSI_OPCODE_MASK) != ISCSI_OP_SCSI_TMFUNC)
  return 0;

 switch (ISCSI_TM_FUNC_VALUE(tmf)) {
 case 129:



  hdr_lun = scsilun_to_int(&tmf->lun);
  if (hdr_lun != task->sc->device->lun)
   return 0;

 case 128:



  if (opcode != ISCSI_OP_SCSI_DATA_OUT) {
   iscsi_conn_printk(KERN_INFO, conn,
       "task [op %x itt "
       "0x%x/0x%x] "
       "rejected.\n",
       opcode, task->itt,
       task->hdr_itt);
   return -EACCES;
  }




  if (conn->session->fast_abort) {
   iscsi_conn_printk(KERN_INFO, conn,
       "task [op %x itt "
       "0x%x/0x%x] fast abort.\n",
       opcode, task->itt,
       task->hdr_itt);
   return -EACCES;
  }
  break;
 case 130:






  if (opcode == ISCSI_OP_SCSI_DATA_OUT &&
      task->hdr_itt == tmf->rtt) {
   ISCSI_DBG_SESSION(conn->session,
       "Preventing task %x/%x from sending "
       "data-out due to abort task in "
       "progress\n", task->itt,
       task->hdr_itt);
   return -EACCES;
  }
  break;
 }

 return 0;
}
