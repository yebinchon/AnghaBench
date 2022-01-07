
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b577xx_doorbell_set_prod {int prod; } ;
struct bnx2fc_rport {int sq_prod_idx; int sq_curr_toggle_bit; int ctx_base; struct b577xx_doorbell_set_prod sq_db; } ;


 int cpu_to_le32 (int ) ;
 int wmb () ;
 int writel (int ,int ) ;

void bnx2fc_ring_doorbell(struct bnx2fc_rport *tgt)
{
 struct b577xx_doorbell_set_prod *sq_db = &tgt->sq_db;
 u32 msg;

 wmb();
 sq_db->prod = tgt->sq_prod_idx |
    (tgt->sq_curr_toggle_bit << 15);
 msg = *((u32 *)sq_db);
 writel(cpu_to_le32(msg), tgt->ctx_base);

}
