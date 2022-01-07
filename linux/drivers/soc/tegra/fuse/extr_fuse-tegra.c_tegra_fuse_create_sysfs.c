
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_fuse_info {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {unsigned int size; } ;


 int device_create_bin_file (struct device*,TYPE_1__*) ;
 TYPE_1__ fuse_bin_attr ;

__attribute__((used)) static int tegra_fuse_create_sysfs(struct device *dev, unsigned int size,
       const struct tegra_fuse_info *info)
{
 fuse_bin_attr.size = size;

 return device_create_bin_file(dev, &fuse_bin_attr);
}
