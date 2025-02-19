
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_resets; struct device_node* of_node; int owner; int * ops; } ;
struct scmi_reset_data {TYPE_2__ rcdev; struct scmi_handle const* handle; } ;
struct scmi_handle {TYPE_1__* reset_ops; } ;
struct device {struct device_node* of_node; } ;
struct scmi_device {struct scmi_handle* handle; struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int (* num_domains_get ) (struct scmi_handle const*) ;} ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 struct scmi_reset_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_reset_controller_register (struct device*,TYPE_2__*) ;
 int scmi_reset_ops ;
 int stub1 (struct scmi_handle const*) ;

__attribute__((used)) static int scmi_reset_probe(struct scmi_device *sdev)
{
 struct scmi_reset_data *data;
 struct device *dev = &sdev->dev;
 struct device_node *np = dev->of_node;
 const struct scmi_handle *handle = sdev->handle;

 if (!handle || !handle->reset_ops)
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->rcdev.ops = &scmi_reset_ops;
 data->rcdev.owner = THIS_MODULE;
 data->rcdev.of_node = np;
 data->rcdev.nr_resets = handle->reset_ops->num_domains_get(handle);
 data->handle = handle;

 return devm_reset_controller_register(dev, &data->rcdev);
}
