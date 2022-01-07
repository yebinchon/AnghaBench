
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_datain_req {int cmd_datain_node; } ;
struct iscsi_cmd {int datain_lock; } ;


 int kmem_cache_free (int ,struct iscsi_datain_req*) ;
 int lio_dr_cache ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void iscsit_free_datain_req(struct iscsi_cmd *cmd, struct iscsi_datain_req *dr)
{
 spin_lock(&cmd->datain_lock);
 list_del(&dr->cmd_datain_node);
 spin_unlock(&cmd->datain_lock);

 kmem_cache_free(lio_dr_cache, dr);
}
