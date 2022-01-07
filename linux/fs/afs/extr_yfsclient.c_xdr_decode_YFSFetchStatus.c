
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct yfs_xdr_YFSFetchStatus {int data_version; int size; int mtime_server; int mtime_client; int lock_count; int group; int mode; int anon_access; int caller_access; int owner; int author; int nlink; int type; int abort_code; } ;
struct afs_file_status {int abort_code; int nlink; int type; int caller_access; int anon_access; int mode; int lock_count; void* data_version; void* size; void* mtime_server; void* mtime_client; void* group; void* owner; void* author; } ;
struct afs_status_cb {int have_error; int have_status; struct afs_file_status status; } ;
struct afs_call {int dummy; } ;
typedef int __be32 ;





 int EBADMSG ;
 int S_IALLUGO ;
 scalar_t__ VNOVNODE ;
 int afs_eproto_bad_status ;
 int afs_protocol_error (struct afs_call*,int ,int ) ;
 int ntohl (int ) ;
 int xdr_dump_bad (int const*) ;
 int xdr_size (struct yfs_xdr_YFSFetchStatus const*) ;
 void* xdr_to_time (int ) ;
 void* xdr_to_u64 (int ) ;

__attribute__((used)) static int xdr_decode_YFSFetchStatus(const __be32 **_bp,
         struct afs_call *call,
         struct afs_status_cb *scb)
{
 const struct yfs_xdr_YFSFetchStatus *xdr = (const void *)*_bp;
 struct afs_file_status *status = &scb->status;
 u32 type;

 status->abort_code = ntohl(xdr->abort_code);
 if (status->abort_code != 0) {
  if (status->abort_code == VNOVNODE)
   status->nlink = 0;
  scb->have_error = 1;
  return 0;
 }

 type = ntohl(xdr->type);
 switch (type) {
 case 129:
 case 130:
 case 128:
  status->type = type;
  break;
 default:
  goto bad;
 }

 status->nlink = ntohl(xdr->nlink);
 status->author = xdr_to_u64(xdr->author);
 status->owner = xdr_to_u64(xdr->owner);
 status->caller_access = ntohl(xdr->caller_access);
 status->anon_access = ntohl(xdr->anon_access);
 status->mode = ntohl(xdr->mode) & S_IALLUGO;
 status->group = xdr_to_u64(xdr->group);
 status->lock_count = ntohl(xdr->lock_count);

 status->mtime_client = xdr_to_time(xdr->mtime_client);
 status->mtime_server = xdr_to_time(xdr->mtime_server);
 status->size = xdr_to_u64(xdr->size);
 status->data_version = xdr_to_u64(xdr->data_version);
 scb->have_status = 1;

 *_bp += xdr_size(xdr);
 return 0;

bad:
 xdr_dump_bad(*_bp);
 return afs_protocol_error(call, -EBADMSG, afs_eproto_bad_status);
}
