
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_call {int unmarshall; unsigned int count2; int out_volsync; int out_scb; int * buffer; struct afs_acl* ret_acl; int tmp; } ;
struct afs_acl {unsigned int size; int data; } ;
typedef int __be32 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int _enter (char*,int) ;
 int _leave (char*) ;
 int afs_extract_begin (struct afs_call*,int ,unsigned int) ;
 int afs_extract_data (struct afs_call*,int) ;
 int afs_extract_to_buf (struct afs_call*,int) ;
 int afs_extract_to_tmp (struct afs_call*) ;
 int data ;
 struct afs_acl* kmalloc (int ,int ) ;
 unsigned int ntohl (int ) ;
 unsigned int round_up (unsigned int,int) ;
 int struct_size (struct afs_acl*,int ,unsigned int) ;
 int xdr_decode_AFSFetchStatus (int const**,struct afs_call*,int ) ;
 int xdr_decode_AFSVolSync (int const**,int ) ;

__attribute__((used)) static int afs_deliver_fs_fetch_acl(struct afs_call *call)
{
 struct afs_acl *acl;
 const __be32 *bp;
 unsigned int size;
 int ret;

 _enter("{%u}", call->unmarshall);

 switch (call->unmarshall) {
 case 0:
  afs_extract_to_tmp(call);
  call->unmarshall++;



 case 1:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  size = call->count2 = ntohl(call->tmp);
  size = round_up(size, 4);

  acl = kmalloc(struct_size(acl, data, size), GFP_KERNEL);
  if (!acl)
   return -ENOMEM;
  call->ret_acl = acl;
  acl->size = call->count2;
  afs_extract_begin(call, acl->data, size);
  call->unmarshall++;



 case 2:
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  afs_extract_to_buf(call, (21 + 6) * 4);
  call->unmarshall++;



 case 3:
  ret = afs_extract_data(call, 0);
  if (ret < 0)
   return ret;

  bp = call->buffer;
  ret = xdr_decode_AFSFetchStatus(&bp, call, call->out_scb);
  if (ret < 0)
   return ret;
  xdr_decode_AFSVolSync(&bp, call->out_volsync);

  call->unmarshall++;

 case 4:
  break;
 }

 _leave(" = 0 [done]");
 return 0;
}
