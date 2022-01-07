
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; } ;
struct idt_ntb_dev {TYPE_2__ ntb; int dbgfs_info; } ;
struct TYPE_3__ {int dev; } ;


 int debugfs_remove (int ) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static void idt_deinit_dbgfs(struct idt_ntb_dev *ndev)
{
 debugfs_remove(ndev->dbgfs_info);

 dev_dbg(&ndev->ntb.pdev->dev, "NTB device DebugFS node discarded");
}
