
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcmu_dev {int dummy; } ;
struct tcmu_cmd {int dbi; int dbi_cnt; struct tcmu_dev* tcmu_dev; struct se_cmd* se_cmd; int queue_entry; } ;
struct se_device {int dummy; } ;
struct se_cmd {struct se_device* se_dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct tcmu_dev* TCMU_DEV (struct se_device*) ;
 int kcalloc (int ,int,int ) ;
 int kmem_cache_free (int ,struct tcmu_cmd*) ;
 struct tcmu_cmd* kmem_cache_zalloc (int ,int ) ;
 int tcmu_cmd_cache ;
 int tcmu_cmd_get_block_cnt (struct tcmu_cmd*) ;
 int tcmu_cmd_reset_dbi_cur (struct tcmu_cmd*) ;

__attribute__((used)) static struct tcmu_cmd *tcmu_alloc_cmd(struct se_cmd *se_cmd)
{
 struct se_device *se_dev = se_cmd->se_dev;
 struct tcmu_dev *udev = TCMU_DEV(se_dev);
 struct tcmu_cmd *tcmu_cmd;

 tcmu_cmd = kmem_cache_zalloc(tcmu_cmd_cache, GFP_KERNEL);
 if (!tcmu_cmd)
  return ((void*)0);

 INIT_LIST_HEAD(&tcmu_cmd->queue_entry);
 tcmu_cmd->se_cmd = se_cmd;
 tcmu_cmd->tcmu_dev = udev;

 tcmu_cmd_reset_dbi_cur(tcmu_cmd);
 tcmu_cmd->dbi_cnt = tcmu_cmd_get_block_cnt(tcmu_cmd);
 tcmu_cmd->dbi = kcalloc(tcmu_cmd->dbi_cnt, sizeof(uint32_t),
    GFP_KERNEL);
 if (!tcmu_cmd->dbi) {
  kmem_cache_free(tcmu_cmd_cache, tcmu_cmd);
  return ((void*)0);
 }

 return tcmu_cmd;
}
