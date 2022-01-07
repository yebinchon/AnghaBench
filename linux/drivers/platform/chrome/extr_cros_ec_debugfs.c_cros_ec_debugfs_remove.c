
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct cros_ec_dev {TYPE_2__* debug_info; } ;
struct TYPE_4__ {int dir; } ;


 int cros_ec_cleanup_console_log (TYPE_2__*) ;
 int debugfs_remove_recursive (int ) ;
 struct cros_ec_dev* dev_get_drvdata (int ) ;

__attribute__((used)) static int cros_ec_debugfs_remove(struct platform_device *pd)
{
 struct cros_ec_dev *ec = dev_get_drvdata(pd->dev.parent);

 debugfs_remove_recursive(ec->debug_info->dir);
 cros_ec_cleanup_console_log(ec->debug_info);

 return 0;
}
