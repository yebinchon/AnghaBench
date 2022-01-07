
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_cmd {int dbi; } ;


 int kfree (int ) ;
 int kmem_cache_free (int ,struct tcmu_cmd*) ;
 int tcmu_cmd_cache ;

__attribute__((used)) static inline void tcmu_free_cmd(struct tcmu_cmd *tcmu_cmd)
{
 kfree(tcmu_cmd->dbi);
 kmem_cache_free(tcmu_cmd_cache, tcmu_cmd);
}
