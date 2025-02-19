
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct TYPE_8__ {int num_deletes; } ;
struct TYPE_9__ {TYPE_2__ cifs_stats; } ;
struct cifs_tcon {TYPE_3__ stats; int ses; } ;
struct cifs_sb_info {int local_nls; } ;
typedef int __le16 ;
struct TYPE_7__ {int Flags2; } ;
struct TYPE_10__ {int BufferFormat; void* ByteCount; void* SearchAttributes; scalar_t__ fileName; TYPE_1__ hdr; } ;
typedef int DELETE_FILE_RSP ;
typedef TYPE_4__ DELETE_FILE_REQ ;


 int ATTR_HIDDEN ;
 int ATTR_READONLY ;
 int ATTR_SYSTEM ;
 int EAGAIN ;
 int FYI ;
 int PATH_MAX ;
 int SMBFLG2_UNICODE ;
 int SMB_COM_DELETE ;
 int SendReceive (unsigned int const,int ,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int cifsConvertToUTF16 (int *,char const*,int ,int ,int) ;
 int cifs_buf_release (TYPE_4__*) ;
 int cifs_dbg (int ,char*,int) ;
 int cifs_remap (struct cifs_sb_info*) ;
 int cifs_stats_inc (int *) ;
 int copy_path_name (scalar_t__,char const*) ;
 void* cpu_to_le16 (int) ;
 int inc_rfc1001_len (TYPE_4__*,int) ;
 int smb_init (int ,int,struct cifs_tcon*,void**,void**) ;

int
CIFSSMBDelFile(const unsigned int xid, struct cifs_tcon *tcon, const char *name,
        struct cifs_sb_info *cifs_sb)
{
 DELETE_FILE_REQ *pSMB = ((void*)0);
 DELETE_FILE_RSP *pSMBr = ((void*)0);
 int rc = 0;
 int bytes_returned;
 int name_len;
 int remap = cifs_remap(cifs_sb);

DelFileRetry:
 rc = smb_init(SMB_COM_DELETE, 1, tcon, (void **) &pSMB,
        (void **) &pSMBr);
 if (rc)
  return rc;

 if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
  name_len = cifsConvertToUTF16((__le16 *) pSMB->fileName, name,
           PATH_MAX, cifs_sb->local_nls,
           remap);
  name_len++;
  name_len *= 2;
 } else {
  name_len = copy_path_name(pSMB->fileName, name);
 }
 pSMB->SearchAttributes =
     cpu_to_le16(ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM);
 pSMB->BufferFormat = 0x04;
 inc_rfc1001_len(pSMB, name_len + 1);
 pSMB->ByteCount = cpu_to_le16(name_len + 1);
 rc = SendReceive(xid, tcon->ses, (struct smb_hdr *) pSMB,
    (struct smb_hdr *) pSMBr, &bytes_returned, 0);
 cifs_stats_inc(&tcon->stats.cifs_stats.num_deletes);
 if (rc)
  cifs_dbg(FYI, "Error in RMFile = %d\n", rc);

 cifs_buf_release(pSMB);
 if (rc == -EAGAIN)
  goto DelFileRetry;

 return rc;
}
