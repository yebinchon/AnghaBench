
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mds_client {int cap_reclaim_work; TYPE_1__* fsc; scalar_t__ stopping; } ;
struct TYPE_2__ {int cap_wq; } ;


 int dout (char*) ;
 scalar_t__ queue_work (int ,int *) ;

void ceph_queue_cap_reclaim_work(struct ceph_mds_client *mdsc)
{
 if (mdsc->stopping)
  return;

        if (queue_work(mdsc->fsc->cap_wq, &mdsc->cap_reclaim_work)) {
                dout("caps reclaim work queued\n");
        } else {
                dout("failed to queue caps release work\n");
        }
}
