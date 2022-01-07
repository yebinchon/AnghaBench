
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulptx_idata {int dummy; } ;
struct ulp_mem_io {int dummy; } ;
struct sk_buff {scalar_t__ head; } ;
struct scatterlist {int dummy; } ;
struct cxgbi_task_tag_info {int dummy; } ;
struct cxgbi_sock {int lock; int port_id; int tid; struct cxgbi_device* cdev; } ;
struct cxgbi_ppm {int dummy; } ;
struct cxgbi_pagepod {int dummy; } ;
struct cxgbi_device {int dummy; } ;


 int CPL_PRIORITY_DATA ;
 int ENOMEM ;
 int SKCBF_TX_FLAG_COMPL ;
 int SKCBF_TX_MEM_WRITE ;
 int cxgbi_ddp_set_one_ppod (struct cxgbi_pagepod*,struct cxgbi_task_tag_info*,struct scatterlist**,unsigned int*) ;
 int cxgbi_skcb_set_flag (struct sk_buff*,int ) ;
 int cxgbi_sock_skb_entail (struct cxgbi_sock*,struct sk_buff*) ;
 struct sk_buff* ddp_ppod_init_idata (struct cxgbi_device*,struct cxgbi_ppm*,unsigned int,unsigned int,int ) ;
 int set_wr_txq (struct sk_buff*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ddp_ppod_write_idata(struct cxgbi_ppm *ppm, struct cxgbi_sock *csk,
    struct cxgbi_task_tag_info *ttinfo,
    unsigned int idx, unsigned int npods,
    struct scatterlist **sg_pp,
    unsigned int *sg_off)
{
 struct cxgbi_device *cdev = csk->cdev;
 struct sk_buff *skb = ddp_ppod_init_idata(cdev, ppm, idx, npods,
        csk->tid);
 struct ulp_mem_io *req;
 struct ulptx_idata *idata;
 struct cxgbi_pagepod *ppod;
 int i;

 if (!skb)
  return -ENOMEM;

 req = (struct ulp_mem_io *)skb->head;
 idata = (struct ulptx_idata *)(req + 1);
 ppod = (struct cxgbi_pagepod *)(idata + 1);

 for (i = 0; i < npods; i++, ppod++)
  cxgbi_ddp_set_one_ppod(ppod, ttinfo, sg_pp, sg_off);

 cxgbi_skcb_set_flag(skb, SKCBF_TX_MEM_WRITE);
 cxgbi_skcb_set_flag(skb, SKCBF_TX_FLAG_COMPL);
 set_wr_txq(skb, CPL_PRIORITY_DATA, csk->port_id);

 spin_lock_bh(&csk->lock);
 cxgbi_sock_skb_entail(csk, skb);
 spin_unlock_bh(&csk->lock);

 return 0;
}
