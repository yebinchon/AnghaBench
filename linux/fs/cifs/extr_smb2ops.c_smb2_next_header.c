
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_transform_hdr {int OriginalMessageSize; } ;
struct smb2_sync_hdr {scalar_t__ ProtocolId; int NextCommand; } ;


 scalar_t__ SMB2_TRANSFORM_PROTO_NUM ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int
smb2_next_header(char *buf)
{
 struct smb2_sync_hdr *hdr = (struct smb2_sync_hdr *)buf;
 struct smb2_transform_hdr *t_hdr = (struct smb2_transform_hdr *)buf;

 if (hdr->ProtocolId == SMB2_TRANSFORM_PROTO_NUM)
  return sizeof(struct smb2_transform_hdr) +
    le32_to_cpu(t_hdr->OriginalMessageSize);

 return le32_to_cpu(hdr->NextCommand);
}
