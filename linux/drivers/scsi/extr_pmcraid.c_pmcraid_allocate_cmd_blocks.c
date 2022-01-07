
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmcraid_instance {int * cmd_list; int cmd_cachep; int cmd_pool_name; TYPE_1__* host; } ;
struct pmcraid_cmd {int dummy; } ;
struct TYPE_2__ {int unique_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PMCRAID_MAX_CMD ;
 int SLAB_HWCACHE_ALIGN ;
 int kmem_cache_alloc (int ,int ) ;
 int kmem_cache_create (int ,int,int ,int ,int *) ;
 int pmcraid_release_cmd_blocks (struct pmcraid_instance*,int) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int pmcraid_allocate_cmd_blocks(struct pmcraid_instance *pinstance)
{
 int i;

 sprintf(pinstance->cmd_pool_name, "pmcraid_cmd_pool_%d",
  pinstance->host->unique_id);


 pinstance->cmd_cachep = kmem_cache_create(
     pinstance->cmd_pool_name,
     sizeof(struct pmcraid_cmd), 0,
     SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!pinstance->cmd_cachep)
  return -ENOMEM;

 for (i = 0; i < PMCRAID_MAX_CMD; i++) {
  pinstance->cmd_list[i] =
   kmem_cache_alloc(pinstance->cmd_cachep, GFP_KERNEL);
  if (!pinstance->cmd_list[i]) {
   pmcraid_release_cmd_blocks(pinstance, i);
   return -ENOMEM;
  }
 }
 return 0;
}
