
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ceph_options {int mount_timeout; } ;
struct ceph_mds_request {int r_wait; int r_tid; } ;
struct ceph_mds_client {int mutex; int safe_umount_waiters; TYPE_2__* fsc; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct TYPE_3__ {struct ceph_options* options; } ;


 struct ceph_mds_request* __get_oldest_req (struct ceph_mds_client*) ;
 int __unregister_request (struct ceph_mds_client*,struct ceph_mds_request*) ;
 int ceph_timeout_jiffies (int ) ;
 int dout (char*,...) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void wait_requests(struct ceph_mds_client *mdsc)
{
 struct ceph_options *opts = mdsc->fsc->client->options;
 struct ceph_mds_request *req;

 mutex_lock(&mdsc->mutex);
 if (__get_oldest_req(mdsc)) {
  mutex_unlock(&mdsc->mutex);

  dout("wait_requests waiting for requests\n");
  wait_for_completion_timeout(&mdsc->safe_umount_waiters,
        ceph_timeout_jiffies(opts->mount_timeout));


  mutex_lock(&mdsc->mutex);
  while ((req = __get_oldest_req(mdsc))) {
   dout("wait_requests timed out on tid %llu\n",
        req->r_tid);
   list_del_init(&req->r_wait);
   __unregister_request(mdsc, req);
  }
 }
 mutex_unlock(&mdsc->mutex);
 dout("wait_requests done\n");
}
