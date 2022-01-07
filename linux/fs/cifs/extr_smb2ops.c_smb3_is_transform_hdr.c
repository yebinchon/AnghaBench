
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_transform_hdr {scalar_t__ ProtocolId; } ;


 scalar_t__ SMB2_TRANSFORM_PROTO_NUM ;

__attribute__((used)) static int
smb3_is_transform_hdr(void *buf)
{
 struct smb2_transform_hdr *trhdr = buf;

 return trhdr->ProtocolId == SMB2_TRANSFORM_PROTO_NUM;
}
