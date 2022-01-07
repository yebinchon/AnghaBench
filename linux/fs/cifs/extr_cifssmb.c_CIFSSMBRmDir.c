
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct TYPE_8__ {int num_rmdirs; } ;
struct TYPE_9__ {TYPE_2__ cifs_stats; } ;
struct cifs_tcon {TYPE_3__ stats; int ses; } ;
struct cifs_sb_info {int local_nls; } ;
typedef int __le16 ;
struct TYPE_7__ {int Flags2; } ;
struct TYPE_10__ {int BufferFormat; int ByteCount; scalar_t__ DirName; TYPE_1__ hdr; } ;
typedef int DELETE_DIRECTORY_RSP ;
typedef TYPE_4__ DELETE_DIRECTORY_REQ ;


 int EAGAIN ;
 int FYI ;
 int PATH_MAX ;
 int SMBFLG2_UNICODE ;
 int SMB_COM_DELETE_DIRECTORY ;
 int SendReceive (unsigned int const,int ,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int cifsConvertToUTF16 (int *,char const*,int ,int ,int) ;
 int cifs_buf_release (TYPE_4__*) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_remap (struct cifs_sb_info*) ;
 int cifs_stats_inc (int *) ;
 int copy_path_name (scalar_t__,char const*) ;
 int cpu_to_le16 (int) ;
 int inc_rfc1001_len (TYPE_4__*,int) ;
 int smb_init (int ,int ,struct cifs_tcon*,void**,void**) ;

int
CIFSSMBRmDir(const unsigned int xid, struct cifs_tcon *tcon, const char *name,
      struct cifs_sb_info *cifs_sb)
{
 DELETE_DIRECTORY_REQ *pSMB = ((void*)0);
 DELETE_DIRECTORY_RSP *pSMBr = ((void*)0);
 int rc = 0;
 int bytes_returned;
 int name_len;
 int remap = cifs_remap(cifs_sb);

 cifs_dbg(FYI, "In CIFSSMBRmDir\n");
RmDirRetry:
 rc = smb_init(SMB_COM_DELETE_DIRECTORY, 0, tcon, (void **) &pSMB,
        (void **) &pSMBr);
 if (rc)
  return rc;

 if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
  name_len = cifsConvertToUTF16((__le16 *) pSMB->DirName, name,
           PATH_MAX, cifs_sb->local_nls,
           remap);
  name_len++;
  name_len *= 2;
 } else {
  name_len = copy_path_name(pSMB->DirName, name);
 }

 pSMB->BufferFormat = 0x04;
 inc_rfc1001_len(pSMB, name_len + 1);
 pSMB->ByteCount = cpu_to_le16(name_len + 1);
 rc = SendReceive(xid, tcon->ses, (struct smb_hdr *) pSMB,
    (struct smb_hdr *) pSMBr, &bytes_returned, 0);
 cifs_stats_inc(&tcon->stats.cifs_stats.num_rmdirs);
 if (rc)
  cifs_dbg(FYI, "Error in RMDir = %d\n", rc);

 cifs_buf_release(pSMB);
 if (rc == -EAGAIN)
  goto RmDirRetry;
 return rc;
}
