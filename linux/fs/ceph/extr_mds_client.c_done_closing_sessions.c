
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mds_client {int num_sessions; TYPE_1__* fsc; } ;
struct TYPE_2__ {int mount_state; } ;


 scalar_t__ CEPH_MOUNT_SHUTDOWN ;
 scalar_t__ READ_ONCE (int ) ;
 int atomic_read (int *) ;

__attribute__((used)) static bool done_closing_sessions(struct ceph_mds_client *mdsc, int skipped)
{
 if (READ_ONCE(mdsc->fsc->mount_state) == CEPH_MOUNT_SHUTDOWN)
  return 1;
 return atomic_read(&mdsc->num_sessions) <= skipped;
}
