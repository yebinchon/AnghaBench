
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {scalar_t__ ProtocolId; int Flags; scalar_t__ Command; int MessageId; } ;
typedef scalar_t__ __u64 ;


 int SMB2_FLAGS_SERVER_TO_REDIR ;
 scalar_t__ SMB2_OPLOCK_BREAK ;
 scalar_t__ SMB2_PROTO_NUMBER ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int
check_smb2_hdr(struct smb2_sync_hdr *shdr, __u64 mid)
{
 __u64 wire_mid = le64_to_cpu(shdr->MessageId);





 if ((shdr->ProtocolId == SMB2_PROTO_NUMBER) &&
     (mid == wire_mid)) {
  if (shdr->Flags & SMB2_FLAGS_SERVER_TO_REDIR)
   return 0;
  else {

   if (shdr->Command == SMB2_OPLOCK_BREAK)
    return 0;
   else
    cifs_dbg(VFS, "Received Request not response\n");
  }
 } else {
  if (shdr->ProtocolId != SMB2_PROTO_NUMBER)
   cifs_dbg(VFS, "Bad protocol string signature header %x\n",
     le32_to_cpu(shdr->ProtocolId));
  if (mid != wire_mid)
   cifs_dbg(VFS, "Mids do not match: %llu and %llu\n",
     mid, wire_mid);
 }
 cifs_dbg(VFS, "Bad SMB detected. The Mid=%llu\n", wire_mid);
 return 1;
}
