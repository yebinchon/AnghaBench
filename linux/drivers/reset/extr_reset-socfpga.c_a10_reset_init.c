
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; } ;
struct TYPE_2__ {int nr_resets; struct device_node* of_node; int * ops; int owner; } ;
struct reset_simple_data {int membase; int status_active_low; TYPE_1__ rcdev; int lock; } ;
struct device_node {int name; } ;
typedef int resource_size_t ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SOCFPGA_NR_BANKS ;
 int THIS_MODULE ;
 int ioremap (int ,int ) ;
 int kfree (struct reset_simple_data*) ;
 struct reset_simple_data* kzalloc (int,int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int*) ;
 int pr_warn (char*) ;
 int request_mem_region (int ,int ,int ) ;
 int reset_controller_register (TYPE_1__*) ;
 int reset_simple_ops ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int a10_reset_init(struct device_node *np)
{
 struct reset_simple_data *data;
 struct resource res;
 resource_size_t size;
 int ret;
 u32 reg_offset = 0x10;

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

 if (of_property_read_u32(np, "altr,modrst-offset", &reg_offset))
  pr_warn("missing altr,modrst-offset property, assuming 0x10\n");
 data->membase += reg_offset;

 spin_lock_init(&data->lock);

 data->rcdev.owner = THIS_MODULE;
 data->rcdev.nr_resets = SOCFPGA_NR_BANKS * 32;
 data->rcdev.ops = &reset_simple_ops;
 data->rcdev.of_node = np;
 data->status_active_low = 1;

 return reset_controller_register(&data->rcdev);

err_alloc:
 kfree(data);
 return ret;
}
