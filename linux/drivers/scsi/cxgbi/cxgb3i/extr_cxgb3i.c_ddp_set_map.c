
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulp_mem_io {int dummy; } ;
struct sk_buff {int priority; scalar_t__ head; } ;
struct scatterlist {int dummy; } ;
struct cxgbi_task_tag_info {unsigned int idx; unsigned int npods; struct scatterlist* sgl; } ;
struct cxgbi_sock {int dummy; } ;
struct cxgbi_ppm {unsigned int llimit; int lldev; } ;
struct cxgbi_pagepod {int dummy; } ;


 int CPL_PRIORITY_CONTROL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ IPPOD_SIZE ;
 int PPOD_PAGES_MAX ;
 unsigned int PPOD_SIZE_SHIFT ;
 struct sk_buff* alloc_wr (scalar_t__,int ,int ) ;
 int cxgb3_ofld_send (int ,struct sk_buff*) ;
 int cxgbi_ddp_set_one_ppod (struct cxgbi_pagepod*,struct cxgbi_task_tag_info*,struct scatterlist**,unsigned int*) ;
 int ulp_mem_io_set_hdr (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int ddp_set_map(struct cxgbi_ppm *ppm, struct cxgbi_sock *csk,
         struct cxgbi_task_tag_info *ttinfo)
{
 unsigned int idx = ttinfo->idx;
 unsigned int npods = ttinfo->npods;
 struct scatterlist *sg = ttinfo->sgl;
 struct cxgbi_pagepod *ppod;
 struct ulp_mem_io *req;
 unsigned int sg_off;
 unsigned int pm_addr = (idx << PPOD_SIZE_SHIFT) + ppm->llimit;
 int i;

 for (i = 0; i < npods; i++, idx++, pm_addr += IPPOD_SIZE) {
  struct sk_buff *skb = alloc_wr(sizeof(struct ulp_mem_io) +
            IPPOD_SIZE, 0, GFP_ATOMIC);

  if (!skb)
   return -ENOMEM;
  ulp_mem_io_set_hdr(skb, pm_addr);
  req = (struct ulp_mem_io *)skb->head;
  ppod = (struct cxgbi_pagepod *)(req + 1);
  sg_off = i * PPOD_PAGES_MAX;
  cxgbi_ddp_set_one_ppod(ppod, ttinfo, &sg,
           &sg_off);
  skb->priority = CPL_PRIORITY_CONTROL;
  cxgb3_ofld_send(ppm->lldev, skb);
 }
 return 0;
}
