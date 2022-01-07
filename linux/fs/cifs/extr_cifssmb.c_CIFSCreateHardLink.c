
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct TYPE_8__ {int num_hardlinks; } ;
struct TYPE_9__ {TYPE_2__ cifs_stats; } ;
struct cifs_tcon {TYPE_3__ stats; int ses; } ;
struct cifs_sb_info {int local_nls; } ;
typedef int __u16 ;
typedef int __le16 ;
struct TYPE_7__ {int Flags2; } ;
struct TYPE_10__ {int BufferFormat; int* OldFileName; void* ByteCount; TYPE_1__ hdr; scalar_t__ ClusterCount; void* Flags; void* SearchAttributes; } ;
typedef int RENAME_RSP ;
typedef TYPE_4__ NT_RENAME_REQ ;


 int ATTR_DIRECTORY ;
 int ATTR_HIDDEN ;
 int ATTR_READONLY ;
 int ATTR_SYSTEM ;
 int CREATE_HARD_LINK ;
 int EAGAIN ;
 int FYI ;
 int PATH_MAX ;
 int SMBFLG2_UNICODE ;
 int SMB_COM_NT_RENAME ;
 int SendReceive (unsigned int const,int ,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int cifsConvertToUTF16 (int *,char const*,int ,int ,int) ;
 int cifs_buf_release (TYPE_4__*) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_remap (struct cifs_sb_info*) ;
 int cifs_stats_inc (int *) ;
 int copy_path_name (int*,char const*) ;
 void* cpu_to_le16 (int) ;
 int inc_rfc1001_len (TYPE_4__*,int) ;
 int smb_init (int ,int,struct cifs_tcon*,void**,void**) ;

int
CIFSCreateHardLink(const unsigned int xid, struct cifs_tcon *tcon,
     const char *from_name, const char *to_name,
     struct cifs_sb_info *cifs_sb)
{
 int rc = 0;
 NT_RENAME_REQ *pSMB = ((void*)0);
 RENAME_RSP *pSMBr = ((void*)0);
 int bytes_returned;
 int name_len, name_len2;
 __u16 count;
 int remap = cifs_remap(cifs_sb);

 cifs_dbg(FYI, "In CIFSCreateHardLink\n");
winCreateHardLinkRetry:

 rc = smb_init(SMB_COM_NT_RENAME, 4, tcon, (void **) &pSMB,
        (void **) &pSMBr);
 if (rc)
  return rc;

 pSMB->SearchAttributes =
     cpu_to_le16(ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM |
   ATTR_DIRECTORY);
 pSMB->Flags = cpu_to_le16(CREATE_HARD_LINK);
 pSMB->ClusterCount = 0;

 pSMB->BufferFormat = 0x04;

 if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
  name_len =
      cifsConvertToUTF16((__le16 *) pSMB->OldFileName, from_name,
           PATH_MAX, cifs_sb->local_nls, remap);
  name_len++;
  name_len *= 2;


  pSMB->OldFileName[name_len] = 0x04;
  pSMB->OldFileName[name_len + 1] = 0x00;
  name_len2 =
      cifsConvertToUTF16((__le16 *)&pSMB->OldFileName[name_len+2],
           to_name, PATH_MAX, cifs_sb->local_nls,
           remap);
  name_len2 += 1 + 1 ;
  name_len2 *= 2;
 } else {
  name_len = copy_path_name(pSMB->OldFileName, from_name);
  pSMB->OldFileName[name_len] = 0x04;
  name_len2 = copy_path_name(pSMB->OldFileName+name_len+1, to_name);
  name_len2++;
 }

 count = 1 + name_len + name_len2;
 inc_rfc1001_len(pSMB, count);
 pSMB->ByteCount = cpu_to_le16(count);

 rc = SendReceive(xid, tcon->ses, (struct smb_hdr *) pSMB,
    (struct smb_hdr *) pSMBr, &bytes_returned, 0);
 cifs_stats_inc(&tcon->stats.cifs_stats.num_hardlinks);
 if (rc)
  cifs_dbg(FYI, "Send error in hard link (NT rename) = %d\n", rc);

 cifs_buf_release(pSMB);
 if (rc == -EAGAIN)
  goto winCreateHardLinkRetry;

 return rc;
}
