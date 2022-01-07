
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct qedf_rport {int sq_mem_size; int sid; scalar_t__ dev_type; int handle; int free_sqes; int rport_lock; TYPE_7__* rdata; scalar_t__ sq_pbl; int sq_pbl_dma; int fw_cid; int p_doorbell; } ;
struct TYPE_9__ {int dest_addr; } ;
struct qedf_ctx {int vlan_id; int prio; int cdev; int dbg_ctx; TYPE_2__* lport; TYPE_1__ ctlr; int data_src_addr; } ;
struct TYPE_13__ {int addr_hi; int addr_mid; int addr_lo; } ;
struct TYPE_11__ {int addr_hi; int addr_mid; int addr_lo; } ;
struct qed_fcoe_params_offload {int e_d_tov_timer_val; int rec_tov_timer_val; int vlan_tag; int flags; scalar_t__ def_q_idx; TYPE_5__ d_id; int max_conc_seqs_c3; TYPE_3__ s_id; int rx_max_fc_pay_len; int tx_max_fc_pay_len; int dst_mac; int src_mac; void* sq_next_page_addr; void* sq_curr_page_addr; int sq_pbl_addr; } ;
struct fcoe_wqe {int dummy; } ;
typedef void* dma_addr_t ;
struct TYPE_16__ {int (* acquire_conn ) (int ,int *,int *,int *) ;int (* offload_conn ) (int ,int ,struct qed_fcoe_params_offload*) ;int (* release_conn ) (int ,int ) ;} ;
struct TYPE_14__ {int port_id; } ;
struct TYPE_15__ {int sp_features; TYPE_6__ ids; TYPE_4__* rport; int max_seq; int maxframe_size; } ;
struct TYPE_12__ {int port_id; } ;
struct TYPE_10__ {int e_d_tov; int host; } ;


 int FCOE_CONN_OFFLOAD_RAMROD_DATA_B_CONF_REQ_SHIFT ;
 int FCOE_CONN_OFFLOAD_RAMROD_DATA_B_REC_VALID_SHIFT ;
 int FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_MASK ;
 int FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_SHIFT ;
 int FCOE_CONN_OFFLOAD_RAMROD_DATA_PRIORITY_SHIFT ;
 int FCOE_CONN_OFFLOAD_RAMROD_DATA_VLAN_ID_SHIFT ;
 int FC_SP_FT_SEQC ;
 int QEDF_INFO (int *,int ,char*,int ,...) ;
 int QEDF_LOG_CONN ;
 scalar_t__ QEDF_RPORT_TYPE_TAPE ;
 int QEDF_WARN (int *,char*,int ) ;
 int atomic_set (int *,int) ;
 int ether_addr_copy (int ,int ) ;
 int fc_host_port_id (int ) ;
 int memset (struct qed_fcoe_params_offload*,int ,int) ;
 TYPE_8__* qed_ops ;
 int spin_lock_init (int *) ;
 int stub1 (int ,int *,int *,int *) ;
 int stub2 (int ,int ,struct qed_fcoe_params_offload*) ;
 int stub3 (int ,int ) ;

__attribute__((used)) static int qedf_offload_connection(struct qedf_ctx *qedf,
 struct qedf_rport *fcport)
{
 struct qed_fcoe_params_offload conn_info;
 u32 port_id;
 int rval;
 uint16_t total_sqe = (fcport->sq_mem_size / sizeof(struct fcoe_wqe));

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_CONN, "Offloading connection "
     "portid=%06x.\n", fcport->rdata->ids.port_id);
 rval = qed_ops->acquire_conn(qedf->cdev, &fcport->handle,
     &fcport->fw_cid, &fcport->p_doorbell);
 if (rval) {
  QEDF_WARN(&(qedf->dbg_ctx), "Could not acquire connection "
      "for portid=%06x.\n", fcport->rdata->ids.port_id);
  rval = 1;
  goto out;
 }

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_CONN, "portid=%06x "
     "fw_cid=%08x handle=%d.\n", fcport->rdata->ids.port_id,
     fcport->fw_cid, fcport->handle);

 memset(&conn_info, 0, sizeof(struct qed_fcoe_params_offload));


 conn_info.sq_pbl_addr = fcport->sq_pbl_dma;

 conn_info.sq_curr_page_addr = (dma_addr_t)(*(u64 *)fcport->sq_pbl);
 conn_info.sq_next_page_addr =
     (dma_addr_t)(*(u64 *)(fcport->sq_pbl + 8));


 ether_addr_copy(conn_info.src_mac, qedf->data_src_addr);

 ether_addr_copy(conn_info.dst_mac, qedf->ctlr.dest_addr);

 conn_info.tx_max_fc_pay_len = fcport->rdata->maxframe_size;
 conn_info.e_d_tov_timer_val = qedf->lport->e_d_tov / 20;
 conn_info.rec_tov_timer_val = 3;
 conn_info.rx_max_fc_pay_len = fcport->rdata->maxframe_size;


 conn_info.vlan_tag = qedf->vlan_id <<
     FCOE_CONN_OFFLOAD_RAMROD_DATA_VLAN_ID_SHIFT;
 conn_info.vlan_tag |=
     qedf->prio << FCOE_CONN_OFFLOAD_RAMROD_DATA_PRIORITY_SHIFT;
 conn_info.flags |= (FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_MASK <<
     FCOE_CONN_OFFLOAD_RAMROD_DATA_B_VLAN_FLAG_SHIFT);


 port_id = fc_host_port_id(qedf->lport->host);
 fcport->sid = port_id;
 conn_info.s_id.addr_hi = (port_id & 0x000000FF);
 conn_info.s_id.addr_mid = (port_id & 0x0000FF00) >> 8;
 conn_info.s_id.addr_lo = (port_id & 0x00FF0000) >> 16;

 conn_info.max_conc_seqs_c3 = fcport->rdata->max_seq;


 port_id = fcport->rdata->rport->port_id;
 conn_info.d_id.addr_hi = (port_id & 0x000000FF);
 conn_info.d_id.addr_mid = (port_id & 0x0000FF00) >> 8;
 conn_info.d_id.addr_lo = (port_id & 0x00FF0000) >> 16;

 conn_info.def_q_idx = 0;


 if (fcport->dev_type == QEDF_RPORT_TYPE_TAPE) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_CONN,
      "Enable CONF, REC for portid=%06x.\n",
      fcport->rdata->ids.port_id);
  conn_info.flags |= 1 <<
      FCOE_CONN_OFFLOAD_RAMROD_DATA_B_CONF_REQ_SHIFT;
  conn_info.flags |=
      ((fcport->rdata->sp_features & FC_SP_FT_SEQC) ? 1 : 0) <<
      FCOE_CONN_OFFLOAD_RAMROD_DATA_B_REC_VALID_SHIFT;
 }

 rval = qed_ops->offload_conn(qedf->cdev, fcport->handle, &conn_info);
 if (rval) {
  QEDF_WARN(&(qedf->dbg_ctx), "Could not offload connection "
      "for portid=%06x.\n", fcport->rdata->ids.port_id);
  goto out_free_conn;
 } else
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_CONN, "Offload "
      "succeeded portid=%06x total_sqe=%d.\n",
      fcport->rdata->ids.port_id, total_sqe);

 spin_lock_init(&fcport->rport_lock);
 atomic_set(&fcport->free_sqes, total_sqe);
 return 0;
out_free_conn:
 qed_ops->release_conn(qedf->cdev, fcport->handle);
out:
 return rval;
}
