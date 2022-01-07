
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {int dentry; } ;
struct kstat {int dummy; } ;


 int coda_revalidate_inode (int ) ;
 int d_inode (int ) ;
 int generic_fillattr (int ,struct kstat*) ;

int coda_getattr(const struct path *path, struct kstat *stat,
   u32 request_mask, unsigned int flags)
{
 int err = coda_revalidate_inode(d_inode(path->dentry));
 if (!err)
  generic_fillattr(d_inode(path->dentry), stat);
 return err;
}
