
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct cachefiles_xattr {int len; int type; } ;
struct TYPE_4__ {TYPE_1__* cookie; } ;
struct cachefiles_object {TYPE_2__ fscache; struct dentry* dentry; } ;
struct TYPE_3__ {int flags; } ;


 int ENOMEM ;
 int ESTALE ;
 int FSCACHE_COOKIE_AUX_UPDATED ;
 int XATTR_REPLACE ;
 int _debug (char*,int ) ;
 int _enter (char*,struct cachefiles_object*,int ) ;
 int _leave (char*,int) ;
 int cachefiles_io_error_obj (struct cachefiles_object*,char*,int) ;
 int cachefiles_xattr_cache ;
 int clear_bit (int ,int *) ;
 int vfs_setxattr (struct dentry*,int ,int *,int ,int ) ;

int cachefiles_update_object_xattr(struct cachefiles_object *object,
       struct cachefiles_xattr *auxdata)
{
 struct dentry *dentry = object->dentry;
 int ret;

 if (!dentry)
  return -ESTALE;

 _enter("%p,#%d", object, auxdata->len);


 _debug("SET #%u", auxdata->len);

 clear_bit(FSCACHE_COOKIE_AUX_UPDATED, &object->fscache.cookie->flags);
 ret = vfs_setxattr(dentry, cachefiles_xattr_cache,
      &auxdata->type, auxdata->len,
      XATTR_REPLACE);
 if (ret < 0 && ret != -ENOMEM)
  cachefiles_io_error_obj(
   object,
   "Failed to update xattr with error %d", ret);

 _leave(" = %d", ret);
 return ret;
}
