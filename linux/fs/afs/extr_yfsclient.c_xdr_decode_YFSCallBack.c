
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yfs_xdr_YFSCallBack {int expiration_time; } ;
struct afs_callback {int expires_at; } ;
struct afs_status_cb {int have_cb; struct afs_callback callback; } ;
struct afs_call {int reply_time; } ;
typedef int ktime_t ;
typedef int __be32 ;


 int NSEC_PER_SEC ;
 int ktime_add (int ,int) ;
 int ktime_divns (int ,int ) ;
 int xdr_size (struct yfs_xdr_YFSCallBack*) ;
 int xdr_to_u64 (int ) ;

__attribute__((used)) static void xdr_decode_YFSCallBack(const __be32 **_bp,
       struct afs_call *call,
       struct afs_status_cb *scb)
{
 struct yfs_xdr_YFSCallBack *x = (void *)*_bp;
 struct afs_callback *cb = &scb->callback;
 ktime_t cb_expiry;

 cb_expiry = call->reply_time;
 cb_expiry = ktime_add(cb_expiry, xdr_to_u64(x->expiration_time) * 100);
 cb->expires_at = ktime_divns(cb_expiry, NSEC_PER_SEC);
 scb->have_cb = 1;
 *_bp += xdr_size(x);
}
