
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tb_regs_switch_header {int dummy; } ;
struct tb_regs_port_header {int dummy; } ;
struct tb_regs_hop {int dummy; } ;
struct tb_nhi {TYPE_1__* pdev; } ;
struct TYPE_5__ {int groups; int * type; int * bus; int * parent; } ;
struct tb {scalar_t__ index; TYPE_2__ dev; int wq; int lock; struct tb_nhi* nhi; } ;
struct TYPE_4__ {int dev; } ;


 int BUILD_BUG_ON (int) ;
 int GFP_KERNEL ;
 int alloc_ordered_workqueue (char*,int ,scalar_t__) ;
 int dev_set_name (TYPE_2__*,char*,scalar_t__) ;
 int device_initialize (TYPE_2__*) ;
 int domain_attr_groups ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,scalar_t__) ;
 int kfree (struct tb*) ;
 struct tb* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int tb_bus_type ;
 int tb_domain_ida ;
 int tb_domain_type ;

struct tb *tb_domain_alloc(struct tb_nhi *nhi, size_t privsize)
{
 struct tb *tb;





 BUILD_BUG_ON(sizeof(struct tb_regs_switch_header) != 5 * 4);
 BUILD_BUG_ON(sizeof(struct tb_regs_port_header) != 8 * 4);
 BUILD_BUG_ON(sizeof(struct tb_regs_hop) != 2 * 4);

 tb = kzalloc(sizeof(*tb) + privsize, GFP_KERNEL);
 if (!tb)
  return ((void*)0);

 tb->nhi = nhi;
 mutex_init(&tb->lock);

 tb->index = ida_simple_get(&tb_domain_ida, 0, 0, GFP_KERNEL);
 if (tb->index < 0)
  goto err_free;

 tb->wq = alloc_ordered_workqueue("thunderbolt%d", 0, tb->index);
 if (!tb->wq)
  goto err_remove_ida;

 tb->dev.parent = &nhi->pdev->dev;
 tb->dev.bus = &tb_bus_type;
 tb->dev.type = &tb_domain_type;
 tb->dev.groups = domain_attr_groups;
 dev_set_name(&tb->dev, "domain%d", tb->index);
 device_initialize(&tb->dev);

 return tb;

err_remove_ida:
 ida_simple_remove(&tb_domain_ida, tb->index);
err_free:
 kfree(tb);

 return ((void*)0);
}
