
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dev; int dbgfs_root; } ;


 int debugfs_create_dir (int ,int ) ;
 int dev_name (int ) ;
 int usb_debug_root ;

void ssusb_debugfs_create_root(struct ssusb_mtk *ssusb)
{
 ssusb->dbgfs_root =
  debugfs_create_dir(dev_name(ssusb->dev), usb_debug_root);
}
