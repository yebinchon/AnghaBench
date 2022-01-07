
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct percpu_ref {int dummy; } ;
struct pci_dev {TYPE_1__* p2pdma; } ;
struct TYPE_2__ {int pool; } ;


 scalar_t__ gen_pool_alloc_owner (int ,size_t,void**) ;
 int gen_pool_free (int ,unsigned long,size_t) ;
 int percpu_ref_tryget_live (struct percpu_ref*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

void *pci_alloc_p2pmem(struct pci_dev *pdev, size_t size)
{
 void *ret = ((void*)0);
 struct percpu_ref *ref;






 rcu_read_lock();
 if (unlikely(!pdev->p2pdma))
  goto out;

 ret = (void *)gen_pool_alloc_owner(pdev->p2pdma->pool, size,
   (void **) &ref);
 if (!ret)
  goto out;

 if (unlikely(!percpu_ref_tryget_live(ref))) {
  gen_pool_free(pdev->p2pdma->pool, (unsigned long) ret, size);
  ret = ((void*)0);
  goto out;
 }
out:
 rcu_read_unlock();
 return ret;
}
