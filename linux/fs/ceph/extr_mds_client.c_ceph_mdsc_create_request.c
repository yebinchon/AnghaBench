
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec64 {int dummy; } ;
struct ceph_mds_request {int r_resend_mds; int r_fmode; int r_op; int r_direct_mode; int r_stamp; int r_unsafe_item; int r_safe_completion; int r_completion; int r_wait; int r_node; int r_kref; int r_unsafe_target_item; int r_unsafe_dir_item; int r_started; struct ceph_mds_client* r_mdsc; int r_fill_mutex; } ;
struct ceph_mds_client {TYPE_2__* fsc; } ;
struct TYPE_4__ {TYPE_1__* sb; } ;
struct TYPE_3__ {int s_time_gran; } ;


 int ENOMEM ;
 struct ceph_mds_request* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int init_completion (int *) ;
 int jiffies ;
 int kref_init (int *) ;
 int ktime_get_coarse_real_ts64 (struct timespec64*) ;
 struct ceph_mds_request* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int timespec64_trunc (struct timespec64,int ) ;

struct ceph_mds_request *
ceph_mdsc_create_request(struct ceph_mds_client *mdsc, int op, int mode)
{
 struct ceph_mds_request *req = kzalloc(sizeof(*req), GFP_NOFS);
 struct timespec64 ts;

 if (!req)
  return ERR_PTR(-ENOMEM);

 mutex_init(&req->r_fill_mutex);
 req->r_mdsc = mdsc;
 req->r_started = jiffies;
 req->r_resend_mds = -1;
 INIT_LIST_HEAD(&req->r_unsafe_dir_item);
 INIT_LIST_HEAD(&req->r_unsafe_target_item);
 req->r_fmode = -1;
 kref_init(&req->r_kref);
 RB_CLEAR_NODE(&req->r_node);
 INIT_LIST_HEAD(&req->r_wait);
 init_completion(&req->r_completion);
 init_completion(&req->r_safe_completion);
 INIT_LIST_HEAD(&req->r_unsafe_item);

 ktime_get_coarse_real_ts64(&ts);
 req->r_stamp = timespec64_trunc(ts, mdsc->fsc->sb->s_time_gran);

 req->r_op = op;
 req->r_direct_mode = mode;
 return req;
}
