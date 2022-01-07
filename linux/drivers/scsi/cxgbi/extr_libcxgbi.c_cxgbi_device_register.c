
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cxgbi_hba {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct cxgbi_device {char* dd_data; int rcu_node; int list_head; TYPE_1__ pmap; struct cxgbi_hba** hbas; struct net_device** ports; } ;


 int CXGBI_DBG_DEV ;
 int GFP_KERNEL ;
 int cdev_list ;
 int cdev_mutex ;
 int cdev_rcu_list ;
 int cdev_rcu_lock ;
 struct cxgbi_device* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int log_debug (int,char*,struct cxgbi_device*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

struct cxgbi_device *cxgbi_device_register(unsigned int extra,
        unsigned int nports)
{
 struct cxgbi_device *cdev;

 cdev = kzalloc(sizeof(*cdev) + extra + nports *
   (sizeof(struct cxgbi_hba *) +
    sizeof(struct net_device *)),
   GFP_KERNEL);
 if (!cdev) {
  pr_warn("nport %d, OOM.\n", nports);
  return ((void*)0);
 }
 cdev->ports = (struct net_device **)(cdev + 1);
 cdev->hbas = (struct cxgbi_hba **)(((char*)cdev->ports) + nports *
      sizeof(struct net_device *));
 if (extra)
  cdev->dd_data = ((char *)cdev->hbas) +
    nports * sizeof(struct cxgbi_hba *);
 spin_lock_init(&cdev->pmap.lock);

 mutex_lock(&cdev_mutex);
 list_add_tail(&cdev->list_head, &cdev_list);
 mutex_unlock(&cdev_mutex);

 spin_lock(&cdev_rcu_lock);
 list_add_tail_rcu(&cdev->rcu_node, &cdev_rcu_list);
 spin_unlock(&cdev_rcu_lock);

 log_debug(1 << CXGBI_DBG_DEV,
  "cdev 0x%p, p# %u.\n", cdev, nports);
 return cdev;
}
