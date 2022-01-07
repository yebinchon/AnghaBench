
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_mds_reply_info_parsed {TYPE_1__* dir_entries; int dir_nr; } ;
struct ceph_dir_file_info {scalar_t__ frag; TYPE_2__* last_readdir; } ;
typedef scalar_t__ loff_t ;
struct TYPE_4__ {struct ceph_mds_reply_info_parsed r_reply_info; } ;
struct TYPE_3__ {scalar_t__ offset; } ;


 scalar_t__ fpos_frag (scalar_t__) ;
 scalar_t__ is_hash_order (scalar_t__) ;

__attribute__((used)) static bool need_reset_readdir(struct ceph_dir_file_info *dfi, loff_t new_pos)
{
 struct ceph_mds_reply_info_parsed *rinfo;
 loff_t chunk_offset;
 if (new_pos == 0)
  return 1;
 if (is_hash_order(new_pos)) {


 } else if (dfi->frag != fpos_frag(new_pos)) {
  return 1;
 }
 rinfo = dfi->last_readdir ? &dfi->last_readdir->r_reply_info : ((void*)0);
 if (!rinfo || !rinfo->dir_nr)
  return 1;
 chunk_offset = rinfo->dir_entries[0].offset;
 return new_pos < chunk_offset ||
        is_hash_order(new_pos) != is_hash_order(chunk_offset);
}
