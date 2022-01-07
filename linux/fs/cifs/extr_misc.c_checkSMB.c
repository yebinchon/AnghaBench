
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ CifsError; } ;
struct smb_hdr {scalar_t__ WordCount; TYPE_1__ Status; int smb_buf_length; } ;
struct TCP_Server_Info {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;


 int EIO ;
 int FYI ;
 int VFS ;
 int be32_to_cpu (int ) ;
 scalar_t__ check_smb_hdr (struct smb_hdr*) ;
 int cifs_dbg (int ,char*,...) ;
 int get_mid (struct smb_hdr*) ;
 int smbCalcSize (struct smb_hdr*,struct TCP_Server_Info*) ;

int
checkSMB(char *buf, unsigned int total_read, struct TCP_Server_Info *server)
{
 struct smb_hdr *smb = (struct smb_hdr *)buf;
 __u32 rfclen = be32_to_cpu(smb->smb_buf_length);
 __u32 clc_len;
 cifs_dbg(FYI, "checkSMB Length: 0x%x, smb_buf_length: 0x%x\n",
   total_read, rfclen);


 if (total_read < 2 + sizeof(struct smb_hdr)) {
  if ((total_read >= sizeof(struct smb_hdr) - 1)
       && (smb->Status.CifsError != 0)) {

   smb->WordCount = 0;

   return 0;
  } else if ((total_read == sizeof(struct smb_hdr) + 1) &&
    (smb->WordCount == 0)) {
   char *tmp = (char *)smb;


   if (tmp[sizeof(struct smb_hdr)] == 0) {







    tmp[sizeof(struct smb_hdr)+1] = 0;
    return 0;
   }
   cifs_dbg(VFS, "rcvd invalid byte count (bcc)\n");
  } else {
   cifs_dbg(VFS, "Length less than smb header size\n");
  }
  return -EIO;
 }


 if (check_smb_hdr(smb))
  return -EIO;
 clc_len = smbCalcSize(smb, server);

 if (4 + rfclen != total_read) {
  cifs_dbg(VFS, "Length read does not match RFC1001 length %d\n",
    rfclen);
  return -EIO;
 }

 if (4 + rfclen != clc_len) {
  __u16 mid = get_mid(smb);

  if ((rfclen > 64 * 1024) && (rfclen > clc_len)) {

   if (((4 + rfclen) & 0xFFFF) == (clc_len & 0xFFFF))
    return 0;
  }
  cifs_dbg(FYI, "Calculated size %u vs length %u mismatch for mid=%u\n",
    clc_len, 4 + rfclen, mid);

  if (4 + rfclen < clc_len) {
   cifs_dbg(VFS, "RFC1001 size %u smaller than SMB for mid=%u\n",
     rfclen, mid);
   return -EIO;
  } else if (rfclen > clc_len + 512) {
   cifs_dbg(VFS, "RFC1001 size %u more than 512 bytes larger than SMB for mid=%u\n",
     rfclen, mid);
   return -EIO;
  }
 }
 return 0;
}
