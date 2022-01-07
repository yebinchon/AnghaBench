
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {scalar_t__ Status; int Command; } ;
struct smb2_sess_setup_rsp {int SecurityBufferLength; int SecurityBufferOffset; } ;
struct smb2_read_rsp {int DataOffset; int DataLength; } ;
struct smb2_query_info_rsp {int OutputBufferLength; int OutputBufferOffset; } ;
struct smb2_query_directory_rsp {int OutputBufferLength; int OutputBufferOffset; } ;
struct smb2_negotiate_rsp {int SecurityBufferLength; int SecurityBufferOffset; } ;
struct smb2_ioctl_rsp {int OutputCount; int OutputOffset; } ;
struct smb2_err_rsp {scalar_t__ StructureSize; } ;
struct smb2_create_rsp {int CreateContextsLength; int CreateContextsOffset; } ;




 scalar_t__ SMB2_ERROR_STRUCTURE_SIZE2 ;






 scalar_t__ STATUS_MORE_PROCESSING_REQUIRED ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

char *
smb2_get_data_area_len(int *off, int *len, struct smb2_sync_hdr *shdr)
{
 *off = 0;
 *len = 0;


 if (shdr->Status && shdr->Status != STATUS_MORE_PROCESSING_REQUIRED &&
     (((struct smb2_err_rsp *)shdr)->StructureSize) ==
      SMB2_ERROR_STRUCTURE_SIZE2)
  return ((void*)0);






 switch (shdr->Command) {
 case 132:
  *off = le16_to_cpu(
    ((struct smb2_negotiate_rsp *)shdr)->SecurityBufferOffset);
  *len = le16_to_cpu(
    ((struct smb2_negotiate_rsp *)shdr)->SecurityBufferLength);
  break;
 case 128:
  *off = le16_to_cpu(
    ((struct smb2_sess_setup_rsp *)shdr)->SecurityBufferOffset);
  *len = le16_to_cpu(
    ((struct smb2_sess_setup_rsp *)shdr)->SecurityBufferLength);
  break;
 case 134:
  *off = le32_to_cpu(
      ((struct smb2_create_rsp *)shdr)->CreateContextsOffset);
  *len = le32_to_cpu(
      ((struct smb2_create_rsp *)shdr)->CreateContextsLength);
  break;
 case 130:
  *off = le16_to_cpu(
      ((struct smb2_query_info_rsp *)shdr)->OutputBufferOffset);
  *len = le32_to_cpu(
      ((struct smb2_query_info_rsp *)shdr)->OutputBufferLength);
  break;
 case 129:

  *off = ((struct smb2_read_rsp *)shdr)->DataOffset;
  *len = le32_to_cpu(((struct smb2_read_rsp *)shdr)->DataLength);
  break;
 case 131:
  *off = le16_to_cpu(
    ((struct smb2_query_directory_rsp *)shdr)->OutputBufferOffset);
  *len = le32_to_cpu(
    ((struct smb2_query_directory_rsp *)shdr)->OutputBufferLength);
  break;
 case 133:
  *off = le32_to_cpu(
    ((struct smb2_ioctl_rsp *)shdr)->OutputOffset);
  *len = le32_to_cpu(
    ((struct smb2_ioctl_rsp *)shdr)->OutputCount);
  break;
 case 135:
 default:

  cifs_dbg(VFS, "no length check for command\n");
  break;
 }





 if (*off > 4096) {
  cifs_dbg(VFS, "offset %d too large, data area ignored\n", *off);
  *len = 0;
  *off = 0;
 } else if (*off < 0) {
  cifs_dbg(VFS, "negative offset %d to data invalid ignore data area\n",
    *off);
  *off = 0;
  *len = 0;
 } else if (*len < 0) {
  cifs_dbg(VFS, "negative data length %d invalid, data area ignored\n",
    *len);
  *len = 0;
 } else if (*len > 128 * 1024) {
  cifs_dbg(VFS, "data area larger than 128K: %d\n", *len);
  *len = 0;
 }


 if ((*off != 0) && (*len != 0))
  return (char *)shdr + *off;
 else
  return ((void*)0);
}
