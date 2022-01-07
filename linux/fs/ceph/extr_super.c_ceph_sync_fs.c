
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ceph_fs_client {int mdsc; TYPE_1__* client; } ;
struct TYPE_2__ {int osdc; } ;


 int ceph_flush_dirty_caps (int ) ;
 int ceph_mdsc_sync (int ) ;
 int ceph_osdc_sync (int *) ;
 struct ceph_fs_client* ceph_sb_to_client (struct super_block*) ;
 int dout (char*) ;

__attribute__((used)) static int ceph_sync_fs(struct super_block *sb, int wait)
{
 struct ceph_fs_client *fsc = ceph_sb_to_client(sb);

 if (!wait) {
  dout("sync_fs (non-blocking)\n");
  ceph_flush_dirty_caps(fsc->mdsc);
  dout("sync_fs (non-blocking) done\n");
  return 0;
 }

 dout("sync_fs (blocking)\n");
 ceph_osdc_sync(&fsc->client->osdc);
 ceph_mdsc_sync(fsc->mdsc);
 dout("sync_fs (blocking) done\n");
 return 0;
}
