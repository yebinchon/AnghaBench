
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_vino {int dummy; } ;
typedef int ino_t ;


 int ceph_ino_compare ;
 int ceph_vino_to_ino (struct ceph_vino) ;
 struct inode* ilookup5 (struct super_block*,int ,int ,struct ceph_vino*) ;

__attribute__((used)) static inline struct inode *ceph_find_inode(struct super_block *sb,
         struct ceph_vino vino)
{
 ino_t t = ceph_vino_to_ino(vino);
 return ilookup5(sb, t, ceph_ino_compare, &vino);
}
