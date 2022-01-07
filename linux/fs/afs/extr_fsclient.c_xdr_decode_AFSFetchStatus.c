
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct afs_xdr_AFSFetchStatus {scalar_t__ abort_code; scalar_t__ if_version; scalar_t__ type; scalar_t__ nlink; scalar_t__ author; scalar_t__ owner; scalar_t__ caller_access; scalar_t__ anon_access; scalar_t__ mode; scalar_t__ group; scalar_t__ lock_count; scalar_t__ mtime_client; scalar_t__ mtime_server; scalar_t__ size_lo; scalar_t__ size_hi; scalar_t__ data_version_lo; scalar_t__ data_version_hi; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct afs_file_status {int size; int data_version; TYPE_2__ mtime_server; TYPE_1__ mtime_client; scalar_t__ lock_count; scalar_t__ group; scalar_t__ mode; scalar_t__ anon_access; scalar_t__ caller_access; scalar_t__ owner; scalar_t__ author; scalar_t__ nlink; scalar_t__ type; scalar_t__ abort_code; } ;
struct afs_status_cb {int have_error; int have_status; struct afs_file_status status; } ;
struct afs_call {scalar_t__ operation_ID; } ;
typedef int __be32 ;


 int AFS_FSTATUS_VERSION ;



 int EBADMSG ;
 scalar_t__ S_IALLUGO ;
 scalar_t__ afs_FS_InlineBulkStatus ;
 int afs_eproto_bad_status ;
 int afs_protocol_error (struct afs_call*,int ,int ) ;
 scalar_t__ htonl (int ) ;
 scalar_t__ ntohl (scalar_t__) ;
 int pr_warn (char*,scalar_t__) ;
 int xdr_dump_bad (int const*) ;

__attribute__((used)) static int xdr_decode_AFSFetchStatus(const __be32 **_bp,
         struct afs_call *call,
         struct afs_status_cb *scb)
{
 const struct afs_xdr_AFSFetchStatus *xdr = (const void *)*_bp;
 struct afs_file_status *status = &scb->status;
 bool inline_error = (call->operation_ID == afs_FS_InlineBulkStatus);
 u64 data_version, size;
 u32 type, abort_code;

 abort_code = ntohl(xdr->abort_code);

 if (xdr->if_version != htonl(AFS_FSTATUS_VERSION)) {
  if (xdr->if_version == htonl(0) &&
      abort_code != 0 &&
      inline_error) {




   status->abort_code = abort_code;
   scb->have_error = 1;
   return 0;
  }

  pr_warn("Unknown AFSFetchStatus version %u\n", ntohl(xdr->if_version));
  goto bad;
 }

 if (abort_code != 0 && inline_error) {
  status->abort_code = abort_code;
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
 status->author = ntohl(xdr->author);
 status->owner = ntohl(xdr->owner);
 status->caller_access = ntohl(xdr->caller_access);
 status->anon_access = ntohl(xdr->anon_access);
 status->mode = ntohl(xdr->mode) & S_IALLUGO;
 status->group = ntohl(xdr->group);
 status->lock_count = ntohl(xdr->lock_count);

 status->mtime_client.tv_sec = ntohl(xdr->mtime_client);
 status->mtime_client.tv_nsec = 0;
 status->mtime_server.tv_sec = ntohl(xdr->mtime_server);
 status->mtime_server.tv_nsec = 0;

 size = (u64)ntohl(xdr->size_lo);
 size |= (u64)ntohl(xdr->size_hi) << 32;
 status->size = size;

 data_version = (u64)ntohl(xdr->data_version_lo);
 data_version |= (u64)ntohl(xdr->data_version_hi) << 32;
 status->data_version = data_version;
 scb->have_status = 1;

 *_bp = (const void *)*_bp + sizeof(*xdr);
 return 0;

bad:
 xdr_dump_bad(*_bp);
 return afs_protocol_error(call, -EBADMSG, afs_eproto_bad_status);
}
