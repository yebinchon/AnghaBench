
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct vhost_vsock {scalar_t__ guest_cid; int hash; } ;


 int EADDRINUSE ;
 int EINVAL ;
 scalar_t__ U32_MAX ;
 scalar_t__ VMADDR_CID_HOST ;
 int hash_add_rcu (int ,int *,scalar_t__) ;
 int hash_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vhost_vsock* vhost_vsock_get (scalar_t__) ;
 int vhost_vsock_hash ;
 int vhost_vsock_mutex ;

__attribute__((used)) static int vhost_vsock_set_cid(struct vhost_vsock *vsock, u64 guest_cid)
{
 struct vhost_vsock *other;


 if (guest_cid <= VMADDR_CID_HOST ||
     guest_cid == U32_MAX)
  return -EINVAL;


 if (guest_cid > U32_MAX)
  return -EINVAL;


 mutex_lock(&vhost_vsock_mutex);
 other = vhost_vsock_get(guest_cid);
 if (other && other != vsock) {
  mutex_unlock(&vhost_vsock_mutex);
  return -EADDRINUSE;
 }

 if (vsock->guest_cid)
  hash_del_rcu(&vsock->hash);

 vsock->guest_cid = guest_cid;
 hash_add_rcu(vhost_vsock_hash, &vsock->hash, vsock->guest_cid);
 mutex_unlock(&vhost_vsock_mutex);

 return 0;
}
