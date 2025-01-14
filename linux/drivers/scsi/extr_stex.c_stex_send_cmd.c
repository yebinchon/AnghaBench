
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct st_hba {scalar_t__ mmio_base; int req_head; int out_req_cnt; TYPE_1__* ccb; } ;
struct req_msg {int tag; } ;
struct TYPE_2__ {struct req_msg* req; } ;


 scalar_t__ IDBL ;
 scalar_t__ IMR0 ;
 int MU_INBOUND_DOORBELL_REQHEADCHANGED ;
 int cpu_to_le16 (size_t) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void
stex_send_cmd(struct st_hba *hba, struct req_msg *req, u16 tag)
{
 req->tag = cpu_to_le16(tag);

 hba->ccb[tag].req = req;
 hba->out_req_cnt++;

 writel(hba->req_head, hba->mmio_base + IMR0);
 writel(MU_INBOUND_DOORBELL_REQHEADCHANGED, hba->mmio_base + IDBL);
 readl(hba->mmio_base + IDBL);
}
