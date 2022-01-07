
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_lu_gp_member {int lu_gp_mem_lock; struct t10_alua_lu_gp* lu_gp; scalar_t__ lu_gp_assoc; int lu_gp_mem_list; int lu_gp_mem_ref_cnt; } ;
struct t10_alua_lu_gp {int lu_gp_lock; int lu_gp_members; } ;
struct se_device {struct t10_alua_lu_gp_member* dev_alua_lu_gp_mem; } ;


 scalar_t__ atomic_read (int *) ;
 int cpu_relax () ;
 int kmem_cache_free (int ,struct t10_alua_lu_gp_member*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t10_alua_lu_gp_mem_cache ;

void core_alua_free_lu_gp_mem(struct se_device *dev)
{
 struct t10_alua_lu_gp *lu_gp;
 struct t10_alua_lu_gp_member *lu_gp_mem;

 lu_gp_mem = dev->dev_alua_lu_gp_mem;
 if (!lu_gp_mem)
  return;

 while (atomic_read(&lu_gp_mem->lu_gp_mem_ref_cnt))
  cpu_relax();

 spin_lock(&lu_gp_mem->lu_gp_mem_lock);
 lu_gp = lu_gp_mem->lu_gp;
 if (lu_gp) {
  spin_lock(&lu_gp->lu_gp_lock);
  if (lu_gp_mem->lu_gp_assoc) {
   list_del(&lu_gp_mem->lu_gp_mem_list);
   lu_gp->lu_gp_members--;
   lu_gp_mem->lu_gp_assoc = 0;
  }
  spin_unlock(&lu_gp->lu_gp_lock);
  lu_gp_mem->lu_gp = ((void*)0);
 }
 spin_unlock(&lu_gp_mem->lu_gp_mem_lock);

 kmem_cache_free(t10_alua_lu_gp_mem_cache, lu_gp_mem);
}
