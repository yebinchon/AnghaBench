
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {int stripe_unit; int stripe_count; int object_size; } ;
struct ceph_inode_info {TYPE_1__ i_layout; } ;
typedef int s32 ;
typedef scalar_t__ loff_t ;


 struct ceph_inode_info* ceph_inode (struct inode*) ;
 int ceph_zero_partial_object (struct inode*,scalar_t__,scalar_t__*) ;
 scalar_t__ do_div (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ceph_zero_objects(struct inode *inode, loff_t offset, loff_t length)
{
 int ret = 0;
 struct ceph_inode_info *ci = ceph_inode(inode);
 s32 stripe_unit = ci->i_layout.stripe_unit;
 s32 stripe_count = ci->i_layout.stripe_count;
 s32 object_size = ci->i_layout.object_size;
 u64 object_set_size = object_size * stripe_count;
 u64 nearly, t;


 nearly = offset + object_set_size - 1;
 t = nearly;
 nearly -= do_div(t, object_set_size);

 while (length && offset < nearly) {
  loff_t size = length;
  ret = ceph_zero_partial_object(inode, offset, &size);
  if (ret < 0)
   return ret;
  offset += size;
  length -= size;
 }
 while (length >= object_set_size) {
  int i;
  loff_t pos = offset;
  for (i = 0; i < stripe_count; ++i) {
   ret = ceph_zero_partial_object(inode, pos, ((void*)0));
   if (ret < 0)
    return ret;
   pos += stripe_unit;
  }
  offset += object_set_size;
  length -= object_set_size;
 }
 while (length) {
  loff_t size = length;
  ret = ceph_zero_partial_object(inode, offset, &size);
  if (ret < 0)
   return ret;
  offset += size;
  length -= size;
 }
 return ret;
}
