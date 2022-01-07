
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mds_client {int max_sessions; int * sessions; } ;



__attribute__((used)) static bool __have_session(struct ceph_mds_client *mdsc, int mds)
{
 if (mds >= mdsc->max_sessions || !mdsc->sessions[mds])
  return 0;
 else
  return 1;
}
