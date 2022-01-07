
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct TYPE_3__ {scalar_t__ attr_type; } ;
struct gasket_sysfs_attribute {TYPE_1__ data; } ;
struct gasket_page_table {int dummy; } ;
struct gasket_dev {int dev; struct gasket_page_table** page_table; } ;
struct TYPE_4__ {int name; } ;
struct device_attribute {TYPE_2__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum sysfs_attribute_type { ____Placeholder_sysfs_attribute_type } sysfs_attribute_type ;





 int ENODEV ;
 int PAGE_SIZE ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (struct device*,char*) ;
 int gasket_page_table_num_active_pages (struct gasket_page_table*) ;
 int gasket_page_table_num_entries (struct gasket_page_table*) ;
 int gasket_page_table_num_simple_entries (struct gasket_page_table*) ;
 struct gasket_sysfs_attribute* gasket_sysfs_get_attr (struct device*,struct device_attribute*) ;
 struct gasket_dev* gasket_sysfs_get_device_data (struct device*) ;
 int gasket_sysfs_put_attr (struct device*,struct gasket_sysfs_attribute*) ;
 int gasket_sysfs_put_device_data (struct device*,struct gasket_dev*) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
     char *buf)
{
 int ret;
 struct gasket_dev *gasket_dev;
 struct gasket_sysfs_attribute *gasket_attr;
 enum sysfs_attribute_type type;
 struct gasket_page_table *gpt;
 uint val;

 gasket_dev = gasket_sysfs_get_device_data(device);
 if (!gasket_dev) {
  dev_err(device, "No Apex device sysfs mapping found\n");
  return -ENODEV;
 }

 gasket_attr = gasket_sysfs_get_attr(device, attr);
 if (!gasket_attr) {
  dev_err(device, "No Apex device sysfs attr data found\n");
  gasket_sysfs_put_device_data(device, gasket_dev);
  return -ENODEV;
 }

 type = (enum sysfs_attribute_type)gasket_attr->data.attr_type;
 gpt = gasket_dev->page_table[0];
 switch (type) {
 case 129:
  val = gasket_page_table_num_entries(gpt);
  break;
 case 128:
  val = gasket_page_table_num_simple_entries(gpt);
  break;
 case 130:
  val = gasket_page_table_num_active_pages(gpt);
  break;
 default:
  dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
   attr->attr.name);
  ret = 0;
  goto exit;
 }
 ret = scnprintf(buf, PAGE_SIZE, "%u\n", val);
exit:
 gasket_sysfs_put_attr(device, gasket_attr);
 gasket_sysfs_put_device_data(device, gasket_dev);
 return ret;
}
