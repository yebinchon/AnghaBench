
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_callback {int expires_at; } ;
struct afs_status_cb {int have_cb; struct afs_callback callback; } ;
struct afs_call {int dummy; } ;
typedef int __be32 ;


 int ntohl (int ) ;
 int xdr_decode_expiry (struct afs_call*,int ) ;

__attribute__((used)) static void xdr_decode_AFSCallBack(const __be32 **_bp,
       struct afs_call *call,
       struct afs_status_cb *scb)
{
 struct afs_callback *cb = &scb->callback;
 const __be32 *bp = *_bp;

 bp++;
 cb->expires_at = xdr_decode_expiry(call, ntohl(*bp++));
 bp++;
 scb->have_cb = 1;
 *_bp = bp;
}
