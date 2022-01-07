
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int done_lock; int kref; int disco_list_node; int dev_list_node; int siblings; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 struct domain_device* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline struct domain_device *sas_alloc_device(void)
{
 struct domain_device *dev = kzalloc(sizeof(*dev), GFP_KERNEL);

 if (dev) {
  INIT_LIST_HEAD(&dev->siblings);
  INIT_LIST_HEAD(&dev->dev_list_node);
  INIT_LIST_HEAD(&dev->disco_list_node);
  kref_init(&dev->kref);
  spin_lock_init(&dev->done_lock);
 }
 return dev;
}
