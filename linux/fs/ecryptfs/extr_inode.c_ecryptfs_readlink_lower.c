
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_sb; } ;


 int DEFINE_DELAYED_CALL (int ) ;
 char* ERR_CAST (char const*) ;
 char* ERR_PTR (int) ;
 scalar_t__ IS_ERR (char const*) ;
 int do_delayed_call (int *) ;
 int done ;
 int ecryptfs_decode_and_decrypt_filename (char**,size_t*,int ,char const*,int ) ;
 struct dentry* ecryptfs_dentry_to_lower (struct dentry*) ;
 int strlen (char const*) ;
 char* vfs_get_link (struct dentry*,int *) ;

__attribute__((used)) static char *ecryptfs_readlink_lower(struct dentry *dentry, size_t *bufsiz)
{
 DEFINE_DELAYED_CALL(done);
 struct dentry *lower_dentry = ecryptfs_dentry_to_lower(dentry);
 const char *link;
 char *buf;
 int rc;

 link = vfs_get_link(lower_dentry, &done);
 if (IS_ERR(link))
  return ERR_CAST(link);

 rc = ecryptfs_decode_and_decrypt_filename(&buf, bufsiz, dentry->d_sb,
        link, strlen(link));
 do_delayed_call(&done);
 if (rc)
  return ERR_PTR(rc);

 return buf;
}
