
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {scalar_t__ Status; int MessageId; int Command; int SessionId; int TreeId; } ;


 int FYI ;
 scalar_t__ STATUS_NETWORK_SESSION_EXPIRED ;
 scalar_t__ STATUS_USER_SESSION_DELETED ;
 int cifs_dbg (int ,char*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int trace_smb3_ses_expired (int ,int ,int ,int ) ;

__attribute__((used)) static bool
smb2_is_session_expired(char *buf)
{
 struct smb2_sync_hdr *shdr = (struct smb2_sync_hdr *)buf;

 if (shdr->Status != STATUS_NETWORK_SESSION_EXPIRED &&
     shdr->Status != STATUS_USER_SESSION_DELETED)
  return 0;

 trace_smb3_ses_expired(shdr->TreeId, shdr->SessionId,
          le16_to_cpu(shdr->Command),
          le64_to_cpu(shdr->MessageId));
 cifs_dbg(FYI, "Session expired or deleted\n");

 return 1;
}
