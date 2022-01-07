
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct se_hba {TYPE_2__* backend; int hba_id; int hba_node; int dev_count; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int owner; int (* detach_hba ) (struct se_hba*) ;} ;


 int WARN_ON (int ) ;
 int hba_lock ;
 int kfree (struct se_hba*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct se_hba*) ;

int
core_delete_hba(struct se_hba *hba)
{
 WARN_ON(hba->dev_count);

 hba->backend->ops->detach_hba(hba);

 spin_lock(&hba_lock);
 list_del(&hba->hba_node);
 spin_unlock(&hba_lock);

 pr_debug("CORE_HBA[%d] - Detached HBA from Generic Target"
   " Core\n", hba->hba_id);

 module_put(hba->backend->ops->owner);

 hba->backend = ((void*)0);
 kfree(hba);
 return 0;
}
