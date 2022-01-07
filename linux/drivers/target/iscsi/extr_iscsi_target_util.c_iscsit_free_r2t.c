
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_r2t {int r2t_list; } ;
struct iscsi_cmd {int r2t_lock; } ;


 int kmem_cache_free (int ,struct iscsi_r2t*) ;
 int lio_r2t_cache ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;

void iscsit_free_r2t(struct iscsi_r2t *r2t, struct iscsi_cmd *cmd)
{
 lockdep_assert_held(&cmd->r2t_lock);

 list_del(&r2t->r2t_list);
 kmem_cache_free(lio_r2t_cache, r2t);
}
