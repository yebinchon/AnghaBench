
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int dir; } ;


 TYPE_1__* debug_info ;
 int debugfs_remove_recursive (int ) ;

__attribute__((used)) static int wilco_ec_debugfs_remove(struct platform_device *pdev)
{
 debugfs_remove_recursive(debug_info->dir);

 return 0;
}
