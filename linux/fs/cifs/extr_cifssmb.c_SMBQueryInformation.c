
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct timespec64 {int tv_sec; scalar_t__ tv_nsec; } ;
struct smb_hdr {int dummy; } ;
struct nls_table {int dummy; } ;
struct cifs_tcon {int ses; } ;
typedef int __u32 ;
typedef int __u16 ;
typedef int __le16 ;
struct TYPE_12__ {int Attributes; void* AllocationSize; void* EndOfFile; scalar_t__ LastAccessTime; void* ChangeTime; void* LastWriteTime; } ;
struct TYPE_9__ {int Flags2; } ;
struct TYPE_11__ {int BufferFormat; int ByteCount; scalar_t__ FileName; TYPE_1__ hdr; } ;
struct TYPE_10__ {int attr; int size; int last_write_time; } ;
typedef TYPE_2__ QUERY_INFORMATION_RSP ;
typedef TYPE_3__ QUERY_INFORMATION_REQ ;
typedef TYPE_4__ FILE_ALL_INFO ;


 int EAGAIN ;
 int EIO ;
 int FYI ;
 int PATH_MAX ;
 int SMBFLG2_UNICODE ;
 int SMB_COM_QUERY_INFORMATION ;
 int SendReceive (unsigned int const,int ,struct smb_hdr*,struct smb_hdr*,int*,int ) ;
 int cifsConvertToUTF16 (int *,char const*,int ,struct nls_table const*,int) ;
 int cifs_UnixTimeToNT (struct timespec64) ;
 int cifs_buf_release (TYPE_3__*) ;
 int cifs_dbg (int ,char*,...) ;
 int copy_path_name (scalar_t__,char const*) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int inc_rfc1001_len (TYPE_3__*,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int smb_init (int ,int ,struct cifs_tcon*,void**,void**) ;

int
SMBQueryInformation(const unsigned int xid, struct cifs_tcon *tcon,
      const char *search_name, FILE_ALL_INFO *data,
      const struct nls_table *nls_codepage, int remap)
{
 QUERY_INFORMATION_REQ *pSMB;
 QUERY_INFORMATION_RSP *pSMBr;
 int rc = 0;
 int bytes_returned;
 int name_len;

 cifs_dbg(FYI, "In SMBQPath path %s\n", search_name);
QInfRetry:
 rc = smb_init(SMB_COM_QUERY_INFORMATION, 0, tcon, (void **) &pSMB,
        (void **) &pSMBr);
 if (rc)
  return rc;

 if (pSMB->hdr.Flags2 & SMBFLG2_UNICODE) {
  name_len =
   cifsConvertToUTF16((__le16 *) pSMB->FileName,
        search_name, PATH_MAX, nls_codepage,
        remap);
  name_len++;
  name_len *= 2;
 } else {
  name_len = copy_path_name(pSMB->FileName, search_name);
 }
 pSMB->BufferFormat = 0x04;
 name_len++;
 inc_rfc1001_len(pSMB, (__u16)name_len);
 pSMB->ByteCount = cpu_to_le16(name_len);

 rc = SendReceive(xid, tcon->ses, (struct smb_hdr *) pSMB,
    (struct smb_hdr *) pSMBr, &bytes_returned, 0);
 if (rc) {
  cifs_dbg(FYI, "Send error in QueryInfo = %d\n", rc);
 } else if (data) {
  struct timespec64 ts;
  __u32 time = le32_to_cpu(pSMBr->last_write_time);



  memset(data, 0, sizeof(FILE_ALL_INFO));
  ts.tv_nsec = 0;
  ts.tv_sec = time;

  data->ChangeTime = cpu_to_le64(cifs_UnixTimeToNT(ts));
  data->LastWriteTime = data->ChangeTime;
  data->LastAccessTime = 0;
  data->AllocationSize =
   cpu_to_le64(le32_to_cpu(pSMBr->size));
  data->EndOfFile = data->AllocationSize;
  data->Attributes =
   cpu_to_le32(le16_to_cpu(pSMBr->attr));
 } else
  rc = -EIO;

 cifs_buf_release(pSMB);

 if (rc == -EAGAIN)
  goto QInfRetry;

 return rc;
}
