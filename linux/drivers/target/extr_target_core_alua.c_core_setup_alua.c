
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t10_alua_lu_gp_member {int lu_gp_mem_lock; } ;
struct se_device {TYPE_1__* transport; TYPE_2__* se_hba; } ;
struct TYPE_4__ {int hba_flags; } ;
struct TYPE_3__ {int transport_flags; int name; } ;


 int HBA_FLAGS_INTERNAL_USE ;
 scalar_t__ IS_ERR (struct t10_alua_lu_gp_member*) ;
 int PTR_ERR (struct t10_alua_lu_gp_member*) ;
 int TRANSPORT_FLAG_PASSTHROUGH_ALUA ;
 int __core_alua_attach_lu_gp_mem (struct t10_alua_lu_gp_member*,int ) ;
 struct t10_alua_lu_gp_member* core_alua_allocate_lu_gp_mem (struct se_device*) ;
 int default_lu_gp ;
 int pr_debug (char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int core_setup_alua(struct se_device *dev)
{
 if (!(dev->transport->transport_flags &
      TRANSPORT_FLAG_PASSTHROUGH_ALUA) &&
     !(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE)) {
  struct t10_alua_lu_gp_member *lu_gp_mem;





  lu_gp_mem = core_alua_allocate_lu_gp_mem(dev);
  if (IS_ERR(lu_gp_mem))
   return PTR_ERR(lu_gp_mem);

  spin_lock(&lu_gp_mem->lu_gp_mem_lock);
  __core_alua_attach_lu_gp_mem(lu_gp_mem,
    default_lu_gp);
  spin_unlock(&lu_gp_mem->lu_gp_mem_lock);

  pr_debug("%s: Adding to default ALUA LU Group:"
   " core/alua/lu_gps/default_lu_gp\n",
   dev->transport->name);
 }

 return 0;
}
