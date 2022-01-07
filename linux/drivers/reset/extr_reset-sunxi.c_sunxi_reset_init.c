
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_2__ {int nr_resets; struct device_node* of_node; int * ops; int owner; } ;
struct reset_simple_data {int active_low; TYPE_1__ rcdev; int lock; int membase; } ;
struct device_node {int name; } ;
typedef int resource_size_t ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int ioremap (int ,int) ;
 int kfree (struct reset_simple_data*) ;
 struct reset_simple_data* kzalloc (int,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int request_mem_region (int ,int,int ) ;
 int reset_controller_register (TYPE_1__*) ;
 int reset_simple_ops ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int sunxi_reset_init(struct device_node *np)
{
 struct reset_simple_data *data;
 struct resource res;
 resource_size_t size;
 int ret;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 ret = of_address_to_resource(np, 0, &res);
 if (ret)
  goto err_alloc;

 size = resource_size(&res);
 if (!request_mem_region(res.start, size, np->name)) {
  ret = -EBUSY;
  goto err_alloc;
 }

 data->membase = ioremap(res.start, size);
 if (!data->membase) {
  ret = -ENOMEM;
  goto err_alloc;
 }

 spin_lock_init(&data->lock);

 data->rcdev.owner = THIS_MODULE;
 data->rcdev.nr_resets = size * 8;
 data->rcdev.ops = &reset_simple_ops;
 data->rcdev.of_node = np;
 data->active_low = 1;

 return reset_controller_register(&data->rcdev);

err_alloc:
 kfree(data);
 return ret;
}
