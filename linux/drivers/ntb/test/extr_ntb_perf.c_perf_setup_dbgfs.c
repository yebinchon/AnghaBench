
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_ctx {int dbgfs_dir; TYPE_1__* ntb; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int dev; struct pci_dev* pdev; } ;


 int chunk_order ;
 int debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct perf_ctx*,int *) ;
 int debugfs_create_u8 (char*,int,int ,int *) ;
 int dev_warn (int *,char*) ;
 int pci_name (struct pci_dev*) ;
 int perf_dbgfs_info ;
 int perf_dbgfs_run ;
 int perf_dbgfs_tcnt ;
 int perf_dbgfs_topdir ;
 int total_order ;
 int use_dma ;

__attribute__((used)) static void perf_setup_dbgfs(struct perf_ctx *perf)
{
 struct pci_dev *pdev = perf->ntb->pdev;

 perf->dbgfs_dir = debugfs_create_dir(pci_name(pdev), perf_dbgfs_topdir);
 if (!perf->dbgfs_dir) {
  dev_warn(&perf->ntb->dev, "DebugFS unsupported\n");
  return;
 }

 debugfs_create_file("info", 0600, perf->dbgfs_dir, perf,
       &perf_dbgfs_info);

 debugfs_create_file("run", 0600, perf->dbgfs_dir, perf,
       &perf_dbgfs_run);

 debugfs_create_file("threads_count", 0600, perf->dbgfs_dir, perf,
       &perf_dbgfs_tcnt);


 debugfs_create_u8("chunk_order", 0500, perf->dbgfs_dir, &chunk_order);

 debugfs_create_u8("total_order", 0500, perf->dbgfs_dir, &total_order);

 debugfs_create_bool("use_dma", 0500, perf->dbgfs_dir, &use_dma);
}
