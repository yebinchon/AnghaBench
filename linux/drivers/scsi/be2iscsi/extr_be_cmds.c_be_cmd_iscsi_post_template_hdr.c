
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_post_template_pages_req {int pages; int type; int num_pages; int hdr; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int va; } ;
struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;


 int ARRAY_SIZE (int ) ;
 int BEISCSI_TEMPLATE_HDR_TYPE_ISCSI ;
 int CMD_SUBSYSTEM_COMMON ;
 int OPCODE_COMMON_ADD_TEMPLATE_HEADER_BUFFERS ;
 int PAGES_4K_SPANNED (int ,int ) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_cmd_page_addrs_prepare (int ,int ,struct be_dma_mem*) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct be_post_template_pages_req* embedded_payload (struct be_mcc_wrb*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int be_cmd_iscsi_post_template_hdr(struct be_ctrl_info *ctrl,
        struct be_dma_mem *q_mem)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_post_template_pages_req *req = embedded_payload(wrb);
 int status;

 mutex_lock(&ctrl->mbox_lock);

 memset(wrb, 0, sizeof(*wrb));
 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
      OPCODE_COMMON_ADD_TEMPLATE_HEADER_BUFFERS,
      sizeof(*req));

 req->num_pages = PAGES_4K_SPANNED(q_mem->va, q_mem->size);
 req->type = BEISCSI_TEMPLATE_HDR_TYPE_ISCSI;
 be_cmd_page_addrs_prepare(req->pages, ARRAY_SIZE(req->pages), q_mem);

 status = be_mbox_notify(ctrl);
 mutex_unlock(&ctrl->mbox_lock);
 return status;
}
