
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_fs_info; } ;
struct ceph_fs_client {int dummy; } ;



__attribute__((used)) static inline struct ceph_fs_client *ceph_sb_to_client(struct super_block *sb)
{
 return (struct ceph_fs_client *)sb->s_fs_info;
}
