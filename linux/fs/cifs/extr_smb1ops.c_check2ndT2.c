
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DataCount; int TotalDataCount; } ;
struct smb_t2_rsp {TYPE_1__ t2_rsp; } ;
struct smb_hdr {scalar_t__ Command; int WordCount; } ;
typedef int __u16 ;


 int CIFSMaxBufSize ;
 int EINVAL ;
 int FYI ;
 scalar_t__ SMB_COM_TRANSACTION2 ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int get_unaligned_le16 (int *) ;

__attribute__((used)) static int
check2ndT2(char *buf)
{
 struct smb_hdr *pSMB = (struct smb_hdr *)buf;
 struct smb_t2_rsp *pSMBt;
 int remaining;
 __u16 total_data_size, data_in_this_rsp;

 if (pSMB->Command != SMB_COM_TRANSACTION2)
  return 0;



 if (pSMB->WordCount != 10) {
  cifs_dbg(FYI, "invalid transact2 word count\n");
  return -EINVAL;
 }

 pSMBt = (struct smb_t2_rsp *)pSMB;

 total_data_size = get_unaligned_le16(&pSMBt->t2_rsp.TotalDataCount);
 data_in_this_rsp = get_unaligned_le16(&pSMBt->t2_rsp.DataCount);

 if (total_data_size == data_in_this_rsp)
  return 0;
 else if (total_data_size < data_in_this_rsp) {
  cifs_dbg(FYI, "total data %d smaller than data in frame %d\n",
    total_data_size, data_in_this_rsp);
  return -EINVAL;
 }

 remaining = total_data_size - data_in_this_rsp;

 cifs_dbg(FYI, "missing %d bytes from transact2, check next response\n",
   remaining);
 if (total_data_size > CIFSMaxBufSize) {
  cifs_dbg(VFS, "TotalDataSize %d is over maximum buffer %d\n",
    total_data_size, CIFSMaxBufSize);
  return -EINVAL;
 }
 return remaining;
}
