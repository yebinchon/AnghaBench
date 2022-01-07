
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int out_volsync; int out_scb; int * buffer; } ;
typedef int __be32 ;


 int _enter (char*) ;
 int _leave (char*) ;
 int afs_transfer_reply (struct afs_call*) ;
 int xdr_decode_AFSFetchStatus (int const**,struct afs_call*,int ) ;
 int xdr_decode_AFSVolSync (int const**,int ) ;

__attribute__((used)) static int afs_deliver_fs_store_data(struct afs_call *call)
{
 const __be32 *bp;
 int ret;

 _enter("");

 ret = afs_transfer_reply(call);
 if (ret < 0)
  return ret;


 bp = call->buffer;
 ret = xdr_decode_AFSFetchStatus(&bp, call, call->out_scb);
 if (ret < 0)
  return ret;
 xdr_decode_AFSVolSync(&bp, call->out_volsync);

 _leave(" = 0 [done]");
 return 0;
}
