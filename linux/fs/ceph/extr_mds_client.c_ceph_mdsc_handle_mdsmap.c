
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int iov_len; void* iov_base; } ;
struct ceph_msg {TYPE_1__ front; } ;
struct ceph_mdsmap {int m_epoch; scalar_t__ m_max_file_size; } ;
struct ceph_mds_client {int mutex; struct ceph_mdsmap* mdsmap; TYPE_2__* fsc; int waiting_for_map; } ;
struct ceph_fsid {int dummy; } ;
typedef int loff_t ;
typedef int fsid ;
struct TYPE_6__ {int monc; } ;
struct TYPE_5__ {TYPE_3__* client; int max_file_size; } ;


 int CEPH_SUB_MDSMAP ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct ceph_mdsmap*) ;
 int MAX_LFS_FILESIZE ;
 int PTR_ERR (struct ceph_mdsmap*) ;
 int __wake_requests (struct ceph_mds_client*,int *) ;
 int bad ;
 scalar_t__ ceph_check_fsid (TYPE_3__*,struct ceph_fsid*) ;
 int ceph_decode_32 (void**) ;
 int ceph_decode_copy (void**,struct ceph_fsid*,int) ;
 int ceph_decode_need (void**,void*,int,int ) ;
 struct ceph_mdsmap* ceph_mdsmap_decode (void**,void*) ;
 int ceph_mdsmap_destroy (struct ceph_mdsmap*) ;
 int ceph_monc_got_map (int *,int ,int) ;
 int check_new_map (struct ceph_mds_client*,struct ceph_mdsmap*,struct ceph_mdsmap*) ;
 int dout (char*,int,int) ;
 int min (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int schedule_delayed (struct ceph_mds_client*) ;

void ceph_mdsc_handle_mdsmap(struct ceph_mds_client *mdsc, struct ceph_msg *msg)
{
 u32 epoch;
 u32 maplen;
 void *p = msg->front.iov_base;
 void *end = p + msg->front.iov_len;
 struct ceph_mdsmap *newmap, *oldmap;
 struct ceph_fsid fsid;
 int err = -EINVAL;

 ceph_decode_need(&p, end, sizeof(fsid)+2*sizeof(u32), bad);
 ceph_decode_copy(&p, &fsid, sizeof(fsid));
 if (ceph_check_fsid(mdsc->fsc->client, &fsid) < 0)
  return;
 epoch = ceph_decode_32(&p);
 maplen = ceph_decode_32(&p);
 dout("handle_map epoch %u len %d\n", epoch, (int)maplen);


 mutex_lock(&mdsc->mutex);
 if (mdsc->mdsmap && epoch <= mdsc->mdsmap->m_epoch) {
  dout("handle_map epoch %u <= our %u\n",
       epoch, mdsc->mdsmap->m_epoch);
  mutex_unlock(&mdsc->mutex);
  return;
 }

 newmap = ceph_mdsmap_decode(&p, end);
 if (IS_ERR(newmap)) {
  err = PTR_ERR(newmap);
  goto bad_unlock;
 }


 if (mdsc->mdsmap) {
  oldmap = mdsc->mdsmap;
  mdsc->mdsmap = newmap;
  check_new_map(mdsc, newmap, oldmap);
  ceph_mdsmap_destroy(oldmap);
 } else {
  mdsc->mdsmap = newmap;
 }
 mdsc->fsc->max_file_size = min((loff_t)mdsc->mdsmap->m_max_file_size,
     MAX_LFS_FILESIZE);

 __wake_requests(mdsc, &mdsc->waiting_for_map);
 ceph_monc_got_map(&mdsc->fsc->client->monc, CEPH_SUB_MDSMAP,
     mdsc->mdsmap->m_epoch);

 mutex_unlock(&mdsc->mutex);
 schedule_delayed(mdsc);
 return;

bad_unlock:
 mutex_unlock(&mdsc->mutex);
bad:
 pr_err("error decoding mdsmap %d\n", err);
 return;
}
