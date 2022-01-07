
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int a_count; } ;
struct p9_fid {int dummy; } ;




 int BUG () ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* XATTR_NAME_POSIX_ACL_ACCESS ;
 char* XATTR_NAME_POSIX_ACL_DEFAULT ;
 int init_user_ns ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int posix_acl_to_xattr (int *,struct posix_acl*,void*,size_t) ;
 size_t posix_acl_xattr_size (int ) ;
 int v9fs_fid_xattr_set (struct p9_fid*,char*,void*,size_t,int ) ;

__attribute__((used)) static int v9fs_set_acl(struct p9_fid *fid, int type, struct posix_acl *acl)
{
 int retval;
 char *name;
 size_t size;
 void *buffer;
 if (!acl)
  return 0;


 size = posix_acl_xattr_size(acl->a_count);
 buffer = kmalloc(size, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;
 retval = posix_acl_to_xattr(&init_user_ns, acl, buffer, size);
 if (retval < 0)
  goto err_free_out;
 switch (type) {
 case 129:
  name = XATTR_NAME_POSIX_ACL_ACCESS;
  break;
 case 128:
  name = XATTR_NAME_POSIX_ACL_DEFAULT;
  break;
 default:
  BUG();
 }
 retval = v9fs_fid_xattr_set(fid, name, buffer, size, 0);
err_free_out:
 kfree(buffer);
 return retval;
}
