
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {int i_ino; } ;
struct cachefiles_xattr {int len; scalar_t__ type; int data; } ;
struct TYPE_6__ {TYPE_2__* cookie; } ;
struct cachefiles_object {TYPE_3__ fscache; struct dentry* dentry; } ;
typedef enum fscache_checkaux { ____Placeholder_fscache_checkaux } fscache_checkaux ;
struct TYPE_5__ {TYPE_1__* def; } ;
struct TYPE_4__ {int name; scalar_t__ check_aux; } ;


 int ASSERT (struct dentry*) ;
 int BUG () ;
 int EIO ;
 int ENODATA ;
 int ENOMEM ;
 int ERANGE ;
 int ESTALE ;



 int XATTR_REPLACE ;
 int _debug (char*,int ,unsigned int) ;
 int _enter (char*,struct cachefiles_object*,int) ;
 int _leave (char*,...) ;
 int cachefiles_gfp ;
 int cachefiles_io_error_obj (struct cachefiles_object*,char*,int ,int) ;
 int cachefiles_xattr_cache ;
 struct dentry* d_backing_inode (struct dentry*) ;
 int fscache_check_aux (TYPE_3__*,int *,unsigned int,int ) ;
 int i_size_read (struct dentry*) ;
 int kfree (struct cachefiles_xattr*) ;
 struct cachefiles_xattr* kmalloc (int,int ) ;
 int pr_err (char*,int ) ;
 int vfs_getxattr (struct dentry*,int ,scalar_t__*,int) ;
 int vfs_setxattr (struct dentry*,int ,scalar_t__*,int,int ) ;

int cachefiles_check_object_xattr(struct cachefiles_object *object,
      struct cachefiles_xattr *auxdata)
{
 struct cachefiles_xattr *auxbuf;
 struct dentry *dentry = object->dentry;
 int ret;

 _enter("%p,#%d", object, auxdata->len);

 ASSERT(dentry);
 ASSERT(d_backing_inode(dentry));

 auxbuf = kmalloc(sizeof(struct cachefiles_xattr) + 512, cachefiles_gfp);
 if (!auxbuf) {
  _leave(" = -ENOMEM");
  return -ENOMEM;
 }


 ret = vfs_getxattr(dentry, cachefiles_xattr_cache,
      &auxbuf->type, 512 + 1);
 if (ret < 0) {
  if (ret == -ENODATA)
   goto stale;


  if (ret == -ERANGE)
   goto bad_type_length;

  cachefiles_io_error_obj(object,
     "Can't read xattr on %lu (err %d)",
     d_backing_inode(dentry)->i_ino, -ret);
  goto error;
 }


 if (ret < 1)
  goto bad_type_length;

 if (auxbuf->type != auxdata->type)
  goto stale;

 auxbuf->len = ret;


 if (object->fscache.cookie->def->check_aux) {
  enum fscache_checkaux result;
  unsigned int dlen;

  dlen = auxbuf->len - 1;

  _debug("checkaux %s #%u",
         object->fscache.cookie->def->name, dlen);

  result = fscache_check_aux(&object->fscache,
        &auxbuf->data, dlen,
        i_size_read(d_backing_inode(dentry)));

  switch (result) {

  case 128:
   goto okay;


  case 130:
   break;


  case 129:
   goto stale;

  default:
   BUG();
  }


  ret = vfs_setxattr(dentry, cachefiles_xattr_cache,
       &auxdata->type, auxdata->len,
       XATTR_REPLACE);
  if (ret < 0) {
   cachefiles_io_error_obj(object,
      "Can't update xattr on %lu"
      " (error %d)",
      d_backing_inode(dentry)->i_ino, -ret);
   goto error;
  }
 }

okay:
 ret = 0;

error:
 kfree(auxbuf);
 _leave(" = %d", ret);
 return ret;

bad_type_length:
 pr_err("Cache object %lu xattr length incorrect\n",
        d_backing_inode(dentry)->i_ino);
 ret = -EIO;
 goto error;

stale:
 ret = -ESTALE;
 goto error;
}
