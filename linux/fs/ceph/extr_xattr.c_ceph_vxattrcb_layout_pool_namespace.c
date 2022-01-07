
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_string {size_t len; int str; } ;
struct TYPE_2__ {int pool_ns; } ;
struct ceph_inode_info {TYPE_1__ i_layout; } ;
typedef size_t ssize_t ;


 int ceph_put_string (struct ceph_string*) ;
 struct ceph_string* ceph_try_get_string (int ) ;
 int memcpy (char*,int ,size_t) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_layout_pool_namespace(struct ceph_inode_info *ci,
         char *val, size_t size)
{
 ssize_t ret = 0;
 struct ceph_string *ns = ceph_try_get_string(ci->i_layout.pool_ns);

 if (ns) {
  ret = ns->len;
  if (ret <= size)
   memcpy(val, ns->str, ret);
  ceph_put_string(ns);
 }
 return ret;
}
