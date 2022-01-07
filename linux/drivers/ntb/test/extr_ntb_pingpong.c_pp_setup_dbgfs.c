
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_ctx {TYPE_1__* ntb; int count; int dbgfs_dir; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int dev; struct pci_dev* pdev; } ;


 void* debugfs_create_atomic_t (char*,int,int ,int *) ;
 int debugfs_create_dir (int ,int ) ;
 int dev_warn (int *,char*) ;
 int pci_name (struct pci_dev*) ;
 int pp_dbgfs_topdir ;

__attribute__((used)) static void pp_setup_dbgfs(struct pp_ctx *pp)
{
 struct pci_dev *pdev = pp->ntb->pdev;
 void *ret;

 pp->dbgfs_dir = debugfs_create_dir(pci_name(pdev), pp_dbgfs_topdir);

 ret = debugfs_create_atomic_t("count", 0600, pp->dbgfs_dir, &pp->count);
 if (!ret)
  dev_warn(&pp->ntb->dev, "DebugFS unsupported\n");
}
