
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
typedef int ino_t ;


 int INO32 ;
 int ceph_ino_to_ino32 (int ) ;
 int ceph_sb_to_client (struct super_block*) ;
 scalar_t__ ceph_test_mount_opt (int ,int ) ;

__attribute__((used)) static inline ino_t ceph_translate_ino(struct super_block *sb, ino_t ino)
{
 if (ceph_test_mount_opt(ceph_sb_to_client(sb), INO32))
  ino = ceph_ino_to_ino32(ino);
 return ino;
}
