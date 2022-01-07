
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct bnx2fc_hba {int hba_lock; int ** tgt_ofld_list; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void bnx2fc_free_conn_id(struct bnx2fc_hba *hba, u32 conn_id)
{

 spin_lock_bh(&hba->hba_lock);
 hba->tgt_ofld_list[conn_id] = ((void*)0);
 spin_unlock_bh(&hba->hba_lock);
}
