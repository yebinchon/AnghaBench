
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct fw_fcoe_els_ct_wr {int rsp_dmaaddr; void* rsp_dmalen; int r_id; int l_id; void* tmo_val; int fl_to_sp; int iqid; int cookie; scalar_t__ cp_en_class; scalar_t__ ctl_pri; void* els_ct_type; void* flowid_len16; void* op_immdlen; } ;
struct TYPE_4__ {int len; int paddr; } ;
struct csio_ioreq {TYPE_2__ dma_buf; scalar_t__ tmo; int iq_idx; TYPE_1__* lnode; int fw_handle; } ;
typedef int __be32 ;
struct TYPE_3__ {int hwp; } ;


 int DIV_ROUND_UP (int ,int) ;
 int FW_FCOE_ELS_CT_WR ;
 int FW_FCOE_ELS_CT_WR_IMMDLEN (int ) ;
 int FW_FCOE_ELS_CT_WR_SP (int) ;
 int FW_WR_FLOWID_V (int ) ;
 int FW_WR_LEN16_V (int ) ;
 int FW_WR_OP_V (int ) ;
 int PORT_ID_PTR (int ) ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int csio_q_physiqid (int ,int ) ;
 int htonl (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
csio_ln_prep_ecwr(struct csio_ioreq *io_req, uint32_t wr_len,
        uint32_t immd_len, uint8_t sub_op, uint32_t sid,
        uint32_t did, uint32_t flow_id, uint8_t *fw_wr)
{
 struct fw_fcoe_els_ct_wr *wr;
 __be32 port_id;

 wr = (struct fw_fcoe_els_ct_wr *)fw_wr;
 wr->op_immdlen = cpu_to_be32(FW_WR_OP_V(FW_FCOE_ELS_CT_WR) |
         FW_FCOE_ELS_CT_WR_IMMDLEN(immd_len));

 wr_len = DIV_ROUND_UP(wr_len, 16);
 wr->flowid_len16 = cpu_to_be32(FW_WR_FLOWID_V(flow_id) |
           FW_WR_LEN16_V(wr_len));
 wr->els_ct_type = sub_op;
 wr->ctl_pri = 0;
 wr->cp_en_class = 0;
 wr->cookie = io_req->fw_handle;
 wr->iqid = cpu_to_be16(csio_q_physiqid(
     io_req->lnode->hwp, io_req->iq_idx));
 wr->fl_to_sp = FW_FCOE_ELS_CT_WR_SP(1);
 wr->tmo_val = (uint8_t) io_req->tmo;
 port_id = htonl(sid);
 memcpy(wr->l_id, PORT_ID_PTR(port_id), 3);
 port_id = htonl(did);
 memcpy(wr->r_id, PORT_ID_PTR(port_id), 3);


 wr->rsp_dmalen = cpu_to_be32(io_req->dma_buf.len);
 wr->rsp_dmaaddr = cpu_to_be64(io_req->dma_buf.paddr);
 return 0;
}
