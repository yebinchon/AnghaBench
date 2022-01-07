
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* pdev; } ;
struct idt_ntb_dev {TYPE_1__ ntb; int dbgfs_info; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int dbgfs_topdir ;
 int debugfs_create_file (char*,int,int ,struct idt_ntb_dev*,int *) ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*) ;
 int idt_dbgfs_info_ops ;
 char* pci_name (TYPE_2__*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int idt_init_dbgfs(struct idt_ntb_dev *ndev)
{
 char devname[64];


 if (IS_ERR_OR_NULL(dbgfs_topdir)) {
  dev_info(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
  return PTR_ERR(dbgfs_topdir);
 }


 snprintf(devname, 64, "info:%s", pci_name(ndev->ntb.pdev));
 ndev->dbgfs_info = debugfs_create_file(devname, 0400, dbgfs_topdir,
  ndev, &idt_dbgfs_info_ops);
 if (IS_ERR(ndev->dbgfs_info)) {
  dev_dbg(&ndev->ntb.pdev->dev, "Failed to create DebugFS node");
  return PTR_ERR(ndev->dbgfs_info);
 }

 dev_dbg(&ndev->ntb.pdev->dev, "NTB device DebugFS node created");

 return 0;
}
