
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct yfs_xdr_YFSVolSync {int dummy; } ;
struct yfs_xdr_YFSFetchStatus {int dummy; } ;
struct yfs_xdr_YFSCallBack {int dummy; } ;
struct afs_status_cb {int dummy; } ;
struct afs_call {int unmarshall; size_t count2; size_t count; int out_volsync; int * buffer; struct afs_status_cb* out_scb; int tmp; } ;
typedef int __be32 ;


 int EBADMSG ;
 int _debug (char*,...) ;
 int _enter (char*,int) ;
 int _leave (char*) ;
 int afs_eproto_ibulkst_cb_count ;
 int afs_eproto_ibulkst_count ;
 int afs_extract_data (struct afs_call*,int) ;
 int afs_extract_to_buf (struct afs_call*,int) ;
 int afs_extract_to_tmp (struct afs_call*) ;
 int afs_protocol_error (struct afs_call*,int ,int ) ;
 size_t ntohl (int ) ;
 int xdr_decode_YFSCallBack (int const**,struct afs_call*,struct afs_status_cb*) ;
 int xdr_decode_YFSFetchStatus (int const**,struct afs_call*,struct afs_status_cb*) ;
 int xdr_decode_YFSVolSync (int const**,int ) ;

__attribute__((used)) static int yfs_deliver_fs_inline_bulk_status(struct afs_call *call)
{
 struct afs_status_cb *scb;
 const __be32 *bp;
 u32 tmp;
 int ret;

 _enter("{%u}", call->unmarshall);

 switch (call->unmarshall) {
 case 0:
  afs_extract_to_tmp(call);
  call->unmarshall++;



 case 1:
  _debug("extract status count");
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  tmp = ntohl(call->tmp);
  _debug("status count: %u/%u", tmp, call->count2);
  if (tmp != call->count2)
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_ibulkst_count);

  call->count = 0;
  call->unmarshall++;
 more_counts:
  afs_extract_to_buf(call, sizeof(struct yfs_xdr_YFSFetchStatus));


 case 2:
  _debug("extract status array %u", call->count);
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  bp = call->buffer;
  scb = &call->out_scb[call->count];
  ret = xdr_decode_YFSFetchStatus(&bp, call, scb);
  if (ret < 0)
   return ret;

  call->count++;
  if (call->count < call->count2)
   goto more_counts;

  call->count = 0;
  call->unmarshall++;
  afs_extract_to_tmp(call);



 case 3:
  _debug("extract CB count");
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  tmp = ntohl(call->tmp);
  _debug("CB count: %u", tmp);
  if (tmp != call->count2)
   return afs_protocol_error(call, -EBADMSG,
        afs_eproto_ibulkst_cb_count);
  call->count = 0;
  call->unmarshall++;
 more_cbs:
  afs_extract_to_buf(call, sizeof(struct yfs_xdr_YFSCallBack));


 case 4:
  _debug("extract CB array");
  ret = afs_extract_data(call, 1);
  if (ret < 0)
   return ret;

  _debug("unmarshall CB array");
  bp = call->buffer;
  scb = &call->out_scb[call->count];
  xdr_decode_YFSCallBack(&bp, call, scb);
  call->count++;
  if (call->count < call->count2)
   goto more_cbs;

  afs_extract_to_buf(call, sizeof(struct yfs_xdr_YFSVolSync));
  call->unmarshall++;


 case 5:
  ret = afs_extract_data(call, 0);
  if (ret < 0)
   return ret;

  bp = call->buffer;
  xdr_decode_YFSVolSync(&bp, call->out_volsync);

  call->unmarshall++;


 case 6:
  break;
 }

 _leave(" = 0 [done]");
 return 0;
}
