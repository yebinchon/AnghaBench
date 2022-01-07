
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1362_hcd {int debug_file; } ;


 int S_IRUGO ;
 int debugfs_create_file (char*,int ,int ,struct isp1362_hcd*,int *) ;
 int isp1362_fops ;
 int usb_debug_root ;

__attribute__((used)) static void create_debug_file(struct isp1362_hcd *isp1362_hcd)
{
 isp1362_hcd->debug_file = debugfs_create_file("isp1362", S_IRUGO,
            usb_debug_root,
            isp1362_hcd,
            &isp1362_fops);
}
