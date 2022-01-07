
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bnx2fc_rport {size_t fcoe_conn_id; } ;
struct bnx2fc_hba {size_t next_conn_id; int hba_lock; struct bnx2fc_rport** tgt_ofld_list; } ;


 size_t BNX2FC_NUM_MAX_SESS ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static u32 bnx2fc_alloc_conn_id(struct bnx2fc_hba *hba,
    struct bnx2fc_rport *tgt)
{
 u32 conn_id, next;
 spin_lock_bh(&hba->hba_lock);
 next = hba->next_conn_id;
 conn_id = hba->next_conn_id++;
 if (hba->next_conn_id == BNX2FC_NUM_MAX_SESS)
  hba->next_conn_id = 0;

 while (hba->tgt_ofld_list[conn_id] != ((void*)0)) {
  conn_id++;
  if (conn_id == BNX2FC_NUM_MAX_SESS)
   conn_id = 0;

  if (conn_id == next) {

   spin_unlock_bh(&hba->hba_lock);
   return -1;
  }
 }
 hba->tgt_ofld_list[conn_id] = tgt;
 tgt->fcoe_conn_id = conn_id;
 spin_unlock_bh(&hba->hba_lock);
 return conn_id;
}
