
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nfcsim {int dropframe; TYPE_2__* nfc_digital_dev; } ;
struct dentry {int dummy; } ;
typedef int devname ;
struct TYPE_4__ {TYPE_1__* nfc_dev; } ;
struct TYPE_3__ {int idx; } ;


 int NFCSIM_ERR (struct nfcsim*,char*,...) ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 int nfcsim_debugfs_root ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void nfcsim_debugfs_init_dev(struct nfcsim *dev)
{
 struct dentry *dev_dir;
 char devname[5];
 u32 idx;
 int n;

 if (!nfcsim_debugfs_root) {
  NFCSIM_ERR(dev, "nfcsim debugfs not initialized\n");
  return;
 }

 idx = dev->nfc_digital_dev->nfc_dev->idx;
 n = snprintf(devname, sizeof(devname), "nfc%d", idx);
 if (n >= sizeof(devname)) {
  NFCSIM_ERR(dev, "Could not compute dev name for dev %d\n", idx);
  return;
 }

 dev_dir = debugfs_create_dir(devname, nfcsim_debugfs_root);
 if (!dev_dir) {
  NFCSIM_ERR(dev, "Could not create debugfs entries for nfc%d\n",
      idx);
  return;
 }

 debugfs_create_u8("dropframe", 0664, dev_dir, &dev->dropframe);
}
