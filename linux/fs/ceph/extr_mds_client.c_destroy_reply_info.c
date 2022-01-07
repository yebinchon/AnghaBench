
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_reply_info_parsed {int dir_buf_size; scalar_t__ dir_entries; } ;


 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;

__attribute__((used)) static void destroy_reply_info(struct ceph_mds_reply_info_parsed *info)
{
 if (!info->dir_entries)
  return;
 free_pages((unsigned long)info->dir_entries, get_order(info->dir_buf_size));
}
