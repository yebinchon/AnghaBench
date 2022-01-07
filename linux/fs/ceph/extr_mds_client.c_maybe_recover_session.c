
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {struct ceph_fs_client* fsc; } ;
struct ceph_fs_client {int sb; scalar_t__ last_auto_reconnect; int blacklisted; int mount_state; } ;


 scalar_t__ CEPH_MOUNT_MOUNTED ;
 int CLEANRECOVER ;
 int HZ ;
 scalar_t__ READ_ONCE (int ) ;
 int ceph_force_reconnect (int ) ;
 int ceph_test_mount_opt (struct ceph_fs_client*,int ) ;
 scalar_t__ jiffies ;
 int pr_info (char*) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void maybe_recover_session(struct ceph_mds_client *mdsc)
{
 struct ceph_fs_client *fsc = mdsc->fsc;

 if (!ceph_test_mount_opt(fsc, CLEANRECOVER))
  return;

 if (READ_ONCE(fsc->mount_state) != CEPH_MOUNT_MOUNTED)
  return;

 if (!READ_ONCE(fsc->blacklisted))
  return;

 if (fsc->last_auto_reconnect &&
     time_before(jiffies, fsc->last_auto_reconnect + HZ * 60 * 30))
  return;

 pr_info("auto reconnect after blacklisted\n");
 fsc->last_auto_reconnect = jiffies;
 ceph_force_reconnect(fsc->sb);
}
