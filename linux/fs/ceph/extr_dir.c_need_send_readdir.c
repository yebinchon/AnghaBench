
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_dir_file_info {scalar_t__ frag; int last_readdir; } ;
typedef int loff_t ;


 int ceph_frag_contains_value (scalar_t__,int ) ;
 scalar_t__ fpos_frag (int ) ;
 int fpos_hash (int ) ;
 scalar_t__ is_hash_order (int ) ;

__attribute__((used)) static bool need_send_readdir(struct ceph_dir_file_info *dfi, loff_t pos)
{
 if (!dfi->last_readdir)
  return 1;
 if (is_hash_order(pos))
  return !ceph_frag_contains_value(dfi->frag, fpos_hash(pos));
 else
  return dfi->frag != fpos_frag(pos);
}
