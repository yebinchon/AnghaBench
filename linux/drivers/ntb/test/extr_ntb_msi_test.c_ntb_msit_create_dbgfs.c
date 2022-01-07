
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ntb_msit_ctx {TYPE_2__* isr_ctx; struct dentry* dbgfs_dir; TYPE_2__* peers; TYPE_1__* ntb; } ;
struct dentry {int dummy; } ;
typedef int buf ;
struct TYPE_4__ {int pidx; int init_comp; struct ntb_msit_ctx* nm; } ;
struct TYPE_3__ {struct pci_dev* pdev; } ;


 void* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_file (char*,int,struct dentry*,struct ntb_msit_ctx*,int *) ;
 int debugfs_create_file_unsafe (char*,int,struct dentry*,TYPE_2__*,int *) ;
 int init_completion (int *) ;
 int ntb_msit_count_fops ;
 struct dentry* ntb_msit_dbgfs_topdir ;
 int ntb_msit_local_port_fops ;
 int ntb_msit_occurrences_fops ;
 int ntb_msit_port_fops ;
 int ntb_msit_ready_fops ;
 int ntb_msit_trigger_fops ;
 int ntb_peer_port_count (TYPE_1__*) ;
 int num_irqs ;
 char* pci_name (struct pci_dev*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void ntb_msit_create_dbgfs(struct ntb_msit_ctx *nm)
{
 struct pci_dev *pdev = nm->ntb->pdev;
 char buf[32];
 int i;
 struct dentry *peer_dir;

 nm->dbgfs_dir = debugfs_create_dir(pci_name(pdev),
        ntb_msit_dbgfs_topdir);
 debugfs_create_file("port", 0400, nm->dbgfs_dir, nm,
       &ntb_msit_local_port_fops);

 for (i = 0; i < ntb_peer_port_count(nm->ntb); i++) {
  nm->peers[i].pidx = i;
  nm->peers[i].nm = nm;
  init_completion(&nm->peers[i].init_comp);

  snprintf(buf, sizeof(buf), "peer%d", i);
  peer_dir = debugfs_create_dir(buf, nm->dbgfs_dir);

  debugfs_create_file_unsafe("trigger", 0200, peer_dir,
        &nm->peers[i],
        &ntb_msit_trigger_fops);

  debugfs_create_file_unsafe("port", 0400, peer_dir,
        &nm->peers[i], &ntb_msit_port_fops);

  debugfs_create_file_unsafe("count", 0400, peer_dir,
        &nm->peers[i],
        &ntb_msit_count_fops);

  debugfs_create_file_unsafe("ready", 0600, peer_dir,
        &nm->peers[i],
        &ntb_msit_ready_fops);
 }

 for (i = 0; i < num_irqs; i++) {
  snprintf(buf, sizeof(buf), "irq%d_occurrences", i);
  debugfs_create_file_unsafe(buf, 0400, nm->dbgfs_dir,
        &nm->isr_ctx[i],
        &ntb_msit_occurrences_fops);
 }
}
