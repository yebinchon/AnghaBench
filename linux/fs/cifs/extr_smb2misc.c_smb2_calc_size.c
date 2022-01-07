
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {int Command; int StructureSize; } ;
struct smb2_sync_pdu {int StructureSize2; struct smb2_sync_hdr sync_hdr; } ;
struct TCP_Server_Info {int dummy; } ;


 int FYI ;
 int VFS ;
 int cifs_dbg (int ,char*,int,...) ;
 int* has_smb2_data_area ;
 size_t le16_to_cpu (int ) ;
 int smb2_get_data_area_len (int*,int*,struct smb2_sync_hdr*) ;

unsigned int
smb2_calc_size(void *buf, struct TCP_Server_Info *srvr)
{
 struct smb2_sync_pdu *pdu = (struct smb2_sync_pdu *)buf;
 struct smb2_sync_hdr *shdr = &pdu->sync_hdr;
 int offset;
 int data_length;

 int len = le16_to_cpu(shdr->StructureSize);





 len += le16_to_cpu(pdu->StructureSize2);

 if (has_smb2_data_area[le16_to_cpu(shdr->Command)] == 0)
  goto calc_size_exit;

 smb2_get_data_area_len(&offset, &data_length, shdr);
 cifs_dbg(FYI, "SMB2 data length %d offset %d\n", data_length, offset);

 if (data_length > 0) {






  if (offset + 1 < len) {
   cifs_dbg(VFS, "data area offset %d overlaps SMB2 header %d\n",
     offset + 1, len);
   data_length = 0;
  } else {
   len = offset + data_length;
  }
 }
calc_size_exit:
 cifs_dbg(FYI, "SMB2 len %d\n", len);
 return len;
}
