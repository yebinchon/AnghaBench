
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct arena_info {int * log_index; int flags; int info2off; int logoff; int mapoff; int dataoff; int infooff; int nextoff; int version_minor; int version_major; int nfree; int external_lbasize; int external_nlba; int internal_lbasize; int internal_nlba; int external_lba_start; int size; struct dentry* debugfs_dir; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int S_IRUGO ;
 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int debugfs_create_u16 (char*,int ,struct dentry*,int *) ;
 int debugfs_create_u32 (char*,int ,struct dentry*,int *) ;
 int debugfs_create_x32 (char*,int ,struct dentry*,int *) ;
 int debugfs_create_x64 (char*,int ,struct dentry*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void arena_debugfs_init(struct arena_info *a, struct dentry *parent,
    int idx)
{
 char dirname[32];
 struct dentry *d;


 if (!parent)
  return;

 snprintf(dirname, 32, "arena%d", idx);
 d = debugfs_create_dir(dirname, parent);
 if (IS_ERR_OR_NULL(d))
  return;
 a->debugfs_dir = d;

 debugfs_create_x64("size", S_IRUGO, d, &a->size);
 debugfs_create_x64("external_lba_start", S_IRUGO, d,
    &a->external_lba_start);
 debugfs_create_x32("internal_nlba", S_IRUGO, d, &a->internal_nlba);
 debugfs_create_u32("internal_lbasize", S_IRUGO, d,
    &a->internal_lbasize);
 debugfs_create_x32("external_nlba", S_IRUGO, d, &a->external_nlba);
 debugfs_create_u32("external_lbasize", S_IRUGO, d,
    &a->external_lbasize);
 debugfs_create_u32("nfree", S_IRUGO, d, &a->nfree);
 debugfs_create_u16("version_major", S_IRUGO, d, &a->version_major);
 debugfs_create_u16("version_minor", S_IRUGO, d, &a->version_minor);
 debugfs_create_x64("nextoff", S_IRUGO, d, &a->nextoff);
 debugfs_create_x64("infooff", S_IRUGO, d, &a->infooff);
 debugfs_create_x64("dataoff", S_IRUGO, d, &a->dataoff);
 debugfs_create_x64("mapoff", S_IRUGO, d, &a->mapoff);
 debugfs_create_x64("logoff", S_IRUGO, d, &a->logoff);
 debugfs_create_x64("info2off", S_IRUGO, d, &a->info2off);
 debugfs_create_x32("flags", S_IRUGO, d, &a->flags);
 debugfs_create_u32("log_index_0", S_IRUGO, d, &a->log_index[0]);
 debugfs_create_u32("log_index_1", S_IRUGO, d, &a->log_index[1]);
}
