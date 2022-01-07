
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_fid {int dummy; } ;
struct afs_call {int out_volsync; int out_scb; int out_dir_scb; int * buffer; int unmarshall; } ;
typedef int __be32 ;


 int _enter (char*,int ) ;
 int afs_transfer_reply (struct afs_call*) ;
 int xdr_decode_YFSFetchStatus (int const**,struct afs_call*,int ) ;
 int xdr_decode_YFSFid (int const**,struct afs_fid*) ;
 int xdr_decode_YFSVolSync (int const**,int ) ;

__attribute__((used)) static int yfs_deliver_fs_remove_file2(struct afs_call *call)
{
 struct afs_fid fid;
 const __be32 *bp;
 int ret;

 _enter("{%u}", call->unmarshall);

 ret = afs_transfer_reply(call);
 if (ret < 0)
  return ret;

 bp = call->buffer;
 ret = xdr_decode_YFSFetchStatus(&bp, call, call->out_dir_scb);
 if (ret < 0)
  return ret;

 xdr_decode_YFSFid(&bp, &fid);
 ret = xdr_decode_YFSFetchStatus(&bp, call, call->out_scb);
 if (ret < 0)
  return ret;


 xdr_decode_YFSVolSync(&bp, call->out_volsync);
 return 0;
}
