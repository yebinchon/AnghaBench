
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int out_volsync; int out_scb; int out_dir_scb; int out_fid; int * buffer; int unmarshall; } ;
typedef int __be32 ;


 int _enter (char*,int ) ;
 int _leave (char*) ;
 int afs_transfer_reply (struct afs_call*) ;
 int xdr_decode_YFSCallBack (int const**,struct afs_call*,int ) ;
 int xdr_decode_YFSFetchStatus (int const**,struct afs_call*,int ) ;
 int xdr_decode_YFSFid (int const**,int ) ;
 int xdr_decode_YFSVolSync (int const**,int ) ;

__attribute__((used)) static int yfs_deliver_fs_create_vnode(struct afs_call *call)
{
 const __be32 *bp;
 int ret;

 _enter("{%u}", call->unmarshall);

 ret = afs_transfer_reply(call);
 if (ret < 0)
  return ret;


 bp = call->buffer;
 xdr_decode_YFSFid(&bp, call->out_fid);
 ret = xdr_decode_YFSFetchStatus(&bp, call, call->out_scb);
 if (ret < 0)
  return ret;
 ret = xdr_decode_YFSFetchStatus(&bp, call, call->out_dir_scb);
 if (ret < 0)
  return ret;
 xdr_decode_YFSCallBack(&bp, call, call->out_scb);
 xdr_decode_YFSVolSync(&bp, call->out_volsync);

 _leave(" = 0 [done]");
 return 0;
}
