
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct afs_vnode {TYPE_1__* volume; } ;
struct afs_cell {size_t name_len; int name; } ;
struct TYPE_2__ {struct afs_cell* cell; } ;


 struct afs_vnode* AFS_FS_I (struct inode*) ;
 int ERANGE ;
 int memcpy (void*,int ,size_t) ;

__attribute__((used)) static int afs_xattr_get_cell(const struct xattr_handler *handler,
         struct dentry *dentry,
         struct inode *inode, const char *name,
         void *buffer, size_t size)
{
 struct afs_vnode *vnode = AFS_FS_I(inode);
 struct afs_cell *cell = vnode->volume->cell;
 size_t namelen;

 namelen = cell->name_len;
 if (size == 0)
  return namelen;
 if (namelen > size)
  return -ERANGE;
 memcpy(buffer, cell->name, namelen);
 return namelen;
}
