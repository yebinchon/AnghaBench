
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1362_hcd {int debug_file; } ;


 int debugfs_remove (int ) ;

__attribute__((used)) static void remove_debug_file(struct isp1362_hcd *isp1362_hcd)
{
 debugfs_remove(isp1362_hcd->debug_file);
}
