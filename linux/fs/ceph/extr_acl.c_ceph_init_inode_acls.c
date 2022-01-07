
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ceph_acl_sec_ctx {int default_acl; int acl; } ;


 int ACL_TYPE_ACCESS ;
 int ACL_TYPE_DEFAULT ;
 int ceph_set_cached_acl (struct inode*,int ,int ) ;

void ceph_init_inode_acls(struct inode *inode, struct ceph_acl_sec_ctx *as_ctx)
{
 if (!inode)
  return;
 ceph_set_cached_acl(inode, ACL_TYPE_ACCESS, as_ctx->acl);
 ceph_set_cached_acl(inode, ACL_TYPE_DEFAULT, as_ctx->default_acl);
}
