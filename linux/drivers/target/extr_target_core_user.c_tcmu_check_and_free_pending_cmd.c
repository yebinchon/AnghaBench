
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_cmd {int flags; } ;


 int EINVAL ;
 int TCMU_CMD_BIT_EXPIRED ;
 int kmem_cache_free (int ,struct tcmu_cmd*) ;
 int tcmu_cmd_cache ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int tcmu_check_and_free_pending_cmd(struct tcmu_cmd *cmd)
{
 if (test_bit(TCMU_CMD_BIT_EXPIRED, &cmd->flags)) {
  kmem_cache_free(tcmu_cmd_cache, cmd);
  return 0;
 }
 return -EINVAL;
}
