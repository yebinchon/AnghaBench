
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ceph_fs_client {int mdsc; } ;


 int ceph_mdsc_close_sessions (int ) ;
 struct ceph_fs_client* ceph_sb_to_client (struct super_block*) ;
 int dout (char*) ;

__attribute__((used)) static void ceph_put_super(struct super_block *s)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(s);

 dout("put_super\n");
 ceph_mdsc_close_sessions(fsc->mdsc);
}
