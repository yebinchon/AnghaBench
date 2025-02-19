
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ceph_string {size_t len; char const* str; } ;
struct ceph_osd_client {int lock; int osdmap; } ;
struct TYPE_5__ {int stripe_unit; int stripe_count; int object_size; int pool_ns; int pool_id; } ;
struct TYPE_6__ {int i_sb; } ;
struct ceph_inode_info {TYPE_2__ i_layout; TYPE_3__ vfs_inode; } ;
struct ceph_fs_client {TYPE_1__* client; } ;
typedef size_t ssize_t ;
typedef int s64 ;
typedef int buf ;
struct TYPE_4__ {struct ceph_osd_client osdc; } ;


 char* ceph_pg_pool_name_by_id (int ,int ) ;
 int ceph_put_string (struct ceph_string*) ;
 struct ceph_fs_client* ceph_sb_to_client (int ) ;
 struct ceph_string* ceph_try_get_string (int ) ;
 int dout (char*,TYPE_3__*) ;
 int down_read (int *) ;
 int memcpy (char*,char const*,size_t) ;
 size_t snprintf (char*,int,char*,int,int,int,...) ;
 size_t strlen (char const*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_layout(struct ceph_inode_info *ci, char *val,
        size_t size)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(ci->vfs_inode.i_sb);
 struct ceph_osd_client *osdc = &fsc->client->osdc;
 struct ceph_string *pool_ns;
 s64 pool = ci->i_layout.pool_id;
 const char *pool_name;
 const char *ns_field = " pool_namespace=";
 char buf[128];
 size_t len, total_len = 0;
 ssize_t ret;

 pool_ns = ceph_try_get_string(ci->i_layout.pool_ns);

 dout("ceph_vxattrcb_layout %p\n", &ci->vfs_inode);
 down_read(&osdc->lock);
 pool_name = ceph_pg_pool_name_by_id(osdc->osdmap, pool);
 if (pool_name) {
  len = snprintf(buf, sizeof(buf),
  "stripe_unit=%u stripe_count=%u object_size=%u pool=",
  ci->i_layout.stripe_unit, ci->i_layout.stripe_count,
         ci->i_layout.object_size);
  total_len = len + strlen(pool_name);
 } else {
  len = snprintf(buf, sizeof(buf),
  "stripe_unit=%u stripe_count=%u object_size=%u pool=%lld",
  ci->i_layout.stripe_unit, ci->i_layout.stripe_count,
  ci->i_layout.object_size, pool);
  total_len = len;
 }

 if (pool_ns)
  total_len += strlen(ns_field) + pool_ns->len;

 ret = total_len;
 if (size >= total_len) {
  memcpy(val, buf, len);
  ret = len;
  if (pool_name) {
   len = strlen(pool_name);
   memcpy(val + ret, pool_name, len);
   ret += len;
  }
  if (pool_ns) {
   len = strlen(ns_field);
   memcpy(val + ret, ns_field, len);
   ret += len;
   memcpy(val + ret, pool_ns->str, pool_ns->len);
   ret += pool_ns->len;
  }
 }
 up_read(&osdc->lock);
 ceph_put_string(pool_ns);
 return ret;
}
