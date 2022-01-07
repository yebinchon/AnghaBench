
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb2_file_all_info {scalar_t__ IndexNumber; } ;
struct smb2_create_rsp {scalar_t__ OplockLevel; int CreateContextsLength; int CreateContextsOffset; } ;
struct create_context {int Next; int NameLength; int NameOffset; } ;
struct TCP_Server_Info {TYPE_1__* ops; } ;
typedef scalar_t__ __u8 ;
struct TYPE_2__ {scalar_t__ (* parse_lease_buf ) (struct create_context*,unsigned int*,char*) ;} ;


 int SMB2_CREATE_QUERY_ON_DISK_ID ;
 int SMB2_CREATE_REQUEST_LEASE ;
 scalar_t__ SMB2_OPLOCK_LEVEL_LEASE ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int parse_query_id_ctxt (struct create_context*,struct smb2_file_all_info*) ;
 scalar_t__ strncmp (char*,int ,int) ;
 scalar_t__ stub1 (struct create_context*,unsigned int*,char*) ;

void
smb2_parse_contexts(struct TCP_Server_Info *server,
         struct smb2_create_rsp *rsp,
         unsigned int *epoch, char *lease_key, __u8 *oplock,
         struct smb2_file_all_info *buf)
{
 char *data_offset;
 struct create_context *cc;
 unsigned int next;
 unsigned int remaining;
 char *name;

 *oplock = 0;
 data_offset = (char *)rsp + le32_to_cpu(rsp->CreateContextsOffset);
 remaining = le32_to_cpu(rsp->CreateContextsLength);
 cc = (struct create_context *)data_offset;


 if (buf)
  buf->IndexNumber = 0;

 while (remaining >= sizeof(struct create_context)) {
  name = le16_to_cpu(cc->NameOffset) + (char *)cc;
  if (le16_to_cpu(cc->NameLength) == 4 &&
      strncmp(name, SMB2_CREATE_REQUEST_LEASE, 4) == 0)
   *oplock = server->ops->parse_lease_buf(cc, epoch,
          lease_key);
  else if (buf && (le16_to_cpu(cc->NameLength) == 4) &&
      strncmp(name, SMB2_CREATE_QUERY_ON_DISK_ID, 4) == 0)
   parse_query_id_ctxt(cc, buf);

  next = le32_to_cpu(cc->Next);
  if (!next)
   break;
  remaining -= next;
  cc = (struct create_context *)((char *)cc + next);
 }

 if (rsp->OplockLevel != SMB2_OPLOCK_LEVEL_LEASE)
  *oplock = rsp->OplockLevel;

 return;
}
