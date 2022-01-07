
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_pdu {int StructureSize2; int sync_hdr; } ;
struct smb2_sync_hdr {int dummy; } ;
struct cifs_tcon {int dummy; } ;
typedef int __u16 ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;
 size_t le16_to_cpu (int ) ;
 int memset (void*,int ,int) ;
 int smb2_hdr_assemble (int *,int ,struct cifs_tcon*) ;
 int* smb2_req_struct_sizes ;

__attribute__((used)) static void
fill_small_buf(__le16 smb2_command, struct cifs_tcon *tcon, void *buf,
        unsigned int *total_len)
{
 struct smb2_sync_pdu *spdu = (struct smb2_sync_pdu *)buf;

 __u16 parmsize = smb2_req_struct_sizes[le16_to_cpu(smb2_command)];





 memset(buf, 0, 256);

 smb2_hdr_assemble(&spdu->sync_hdr, smb2_command, tcon);
 spdu->StructureSize2 = cpu_to_le16(parmsize);

 *total_len = parmsize + sizeof(struct smb2_sync_hdr);
}
