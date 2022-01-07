
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct physdev_unmap_pirq {scalar_t__ domid; int pirq; } ;
struct TYPE_3__ {int flags; scalar_t__ domid; int pirq; } ;
struct TYPE_4__ {TYPE_1__ pirq; } ;
struct irq_info {TYPE_2__ u; } ;


 scalar_t__ DOMID_SELF ;
 int ENOENT ;
 int ESRCH ;
 int HYPERVISOR_physdev_op (int ,struct physdev_unmap_pirq*) ;
 int PHYSDEVOP_unmap_pirq ;
 int PIRQ_MSI_GROUP ;
 struct irq_info* info_for_irq (int) ;
 int irq_mapping_update_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,scalar_t__,int ) ;
 int pr_warn (char*,int) ;
 int xen_free_irq (int) ;
 scalar_t__ xen_initial_domain () ;

int xen_destroy_irq(int irq)
{
 struct physdev_unmap_pirq unmap_irq;
 struct irq_info *info = info_for_irq(irq);
 int rc = -ENOENT;

 mutex_lock(&irq_mapping_update_lock);






 if (xen_initial_domain() && !(info->u.pirq.flags & PIRQ_MSI_GROUP)) {
  unmap_irq.pirq = info->u.pirq.pirq;
  unmap_irq.domid = info->u.pirq.domid;
  rc = HYPERVISOR_physdev_op(PHYSDEVOP_unmap_pirq, &unmap_irq);




  if ((rc == -ESRCH && info->u.pirq.domid != DOMID_SELF))
   pr_info("domain %d does not have %d anymore\n",
    info->u.pirq.domid, info->u.pirq.pirq);
  else if (rc) {
   pr_warn("unmap irq failed %d\n", rc);
   goto out;
  }
 }

 xen_free_irq(irq);

out:
 mutex_unlock(&irq_mapping_update_lock);
 return rc;
}
