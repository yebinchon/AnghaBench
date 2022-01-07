
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct list_head {int dummy; } ;
struct io_bdt {struct bnx2fc_cmd* io_req; } ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct TYPE_6__ {scalar_t__ counter; } ;
struct bnx2fc_rport {int free_sqes; TYPE_3__ num_active_ios; struct fcoe_port* port; } ;
struct bnx2fc_interface {TYPE_1__* hba; } ;
struct bnx2fc_cmd_mgr {struct io_bdt** io_bdt_pool; int * free_list_lock; struct bnx2fc_cmd** cmds; TYPE_2__* free_list; } ;
struct bnx2fc_cmd {size_t xid; int refcount; struct io_bdt* bd_tbl; scalar_t__ req_flags; struct bnx2fc_cmd_mgr* cmd_mgr; struct fcoe_port* port; int link; } ;
struct TYPE_5__ {scalar_t__ next; } ;
struct TYPE_4__ {struct bnx2fc_cmd_mgr* cmd_mgr; } ;


 scalar_t__ BNX2FC_SCSI_MAX_SQES ;
 scalar_t__ BNX2FC_SQ_WQES_MAX ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (TYPE_3__*) ;
 scalar_t__ atomic_read (int *) ;
 int get_cpu () ;
 int kref_init (int *) ;
 int list_del_init (struct list_head*) ;
 scalar_t__ list_empty (TYPE_2__*) ;
 int put_cpu () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct bnx2fc_cmd *bnx2fc_cmd_alloc(struct bnx2fc_rport *tgt)
{
 struct fcoe_port *port = tgt->port;
 struct bnx2fc_interface *interface = port->priv;
 struct bnx2fc_cmd_mgr *cmd_mgr = interface->hba->cmd_mgr;
 struct bnx2fc_cmd *io_req;
 struct list_head *listp;
 struct io_bdt *bd_tbl;
 u32 free_sqes;
 u32 max_sqes;
 u16 xid;
 int index = get_cpu();

 max_sqes = BNX2FC_SCSI_MAX_SQES;




 spin_lock_bh(&cmd_mgr->free_list_lock[index]);
 free_sqes = atomic_read(&tgt->free_sqes);
 if ((list_empty(&cmd_mgr->free_list[index])) ||
     (tgt->num_active_ios.counter >= max_sqes) ||
     (free_sqes + max_sqes <= BNX2FC_SQ_WQES_MAX)) {
  spin_unlock_bh(&cmd_mgr->free_list_lock[index]);
  put_cpu();
  return ((void*)0);
 }

 listp = (struct list_head *)
  cmd_mgr->free_list[index].next;
 list_del_init(listp);
 io_req = (struct bnx2fc_cmd *) listp;
 xid = io_req->xid;
 cmd_mgr->cmds[xid] = io_req;
 atomic_inc(&tgt->num_active_ios);
 atomic_dec(&tgt->free_sqes);
 spin_unlock_bh(&cmd_mgr->free_list_lock[index]);
 put_cpu();

 INIT_LIST_HEAD(&io_req->link);

 io_req->port = port;
 io_req->cmd_mgr = cmd_mgr;
 io_req->req_flags = 0;



 bd_tbl = io_req->bd_tbl = cmd_mgr->io_bdt_pool[xid];
 bd_tbl->io_req = io_req;


 kref_init(&io_req->refcount);
 return io_req;
}
