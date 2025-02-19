
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int DataCount; int DataOffset; int TotalDataCount; } ;
struct TYPE_3__ {int Protocol; } ;
struct smb_t2_rsp {TYPE_2__ t2_rsp; TYPE_1__ hdr; } ;
struct smb_hdr {int smb_buf_length; } ;
typedef unsigned int __u16 ;


 int CIFSMaxBufSize ;
 int ENOBUFS ;
 int EPROTO ;
 int FYI ;
 int MAX_CIFS_HDR_SIZE ;
 unsigned int USHRT_MAX ;
 unsigned int be32_to_cpu (int ) ;
 int cifs_dbg (int ,char*,...) ;
 int cpu_to_be32 (unsigned int) ;
 unsigned int get_bcc (struct smb_hdr*) ;
 int get_unaligned_le16 (int *) ;
 int memcpy (char*,char*,unsigned int) ;
 int put_bcc (unsigned int,struct smb_hdr*) ;
 int put_unaligned_le16 (unsigned int,int *) ;

__attribute__((used)) static int
coalesce_t2(char *second_buf, struct smb_hdr *target_hdr)
{
 struct smb_t2_rsp *pSMBs = (struct smb_t2_rsp *)second_buf;
 struct smb_t2_rsp *pSMBt = (struct smb_t2_rsp *)target_hdr;
 char *data_area_of_tgt;
 char *data_area_of_src;
 int remaining;
 unsigned int byte_count, total_in_tgt;
 __u16 tgt_total_cnt, src_total_cnt, total_in_src;

 src_total_cnt = get_unaligned_le16(&pSMBs->t2_rsp.TotalDataCount);
 tgt_total_cnt = get_unaligned_le16(&pSMBt->t2_rsp.TotalDataCount);

 if (tgt_total_cnt != src_total_cnt)
  cifs_dbg(FYI, "total data count of primary and secondary t2 differ source=%hu target=%hu\n",
    src_total_cnt, tgt_total_cnt);

 total_in_tgt = get_unaligned_le16(&pSMBt->t2_rsp.DataCount);

 remaining = tgt_total_cnt - total_in_tgt;

 if (remaining < 0) {
  cifs_dbg(FYI, "Server sent too much data. tgt_total_cnt=%hu total_in_tgt=%u\n",
    tgt_total_cnt, total_in_tgt);
  return -EPROTO;
 }

 if (remaining == 0) {

  cifs_dbg(FYI, "no more data remains\n");
  return 0;
 }

 total_in_src = get_unaligned_le16(&pSMBs->t2_rsp.DataCount);
 if (remaining < total_in_src)
  cifs_dbg(FYI, "transact2 2nd response contains too much data\n");


 data_area_of_tgt = (char *)&pSMBt->hdr.Protocol +
    get_unaligned_le16(&pSMBt->t2_rsp.DataOffset);


 data_area_of_src = (char *)&pSMBs->hdr.Protocol +
    get_unaligned_le16(&pSMBs->t2_rsp.DataOffset);

 data_area_of_tgt += total_in_tgt;

 total_in_tgt += total_in_src;

 if (total_in_tgt > USHRT_MAX) {
  cifs_dbg(FYI, "coalesced DataCount too large (%u)\n",
    total_in_tgt);
  return -EPROTO;
 }
 put_unaligned_le16(total_in_tgt, &pSMBt->t2_rsp.DataCount);


 byte_count = get_bcc(target_hdr);
 byte_count += total_in_src;

 if (byte_count > USHRT_MAX) {
  cifs_dbg(FYI, "coalesced BCC too large (%u)\n", byte_count);
  return -EPROTO;
 }
 put_bcc(byte_count, target_hdr);

 byte_count = be32_to_cpu(target_hdr->smb_buf_length);
 byte_count += total_in_src;

 if (byte_count > CIFSMaxBufSize + MAX_CIFS_HDR_SIZE - 4) {
  cifs_dbg(FYI, "coalesced BCC exceeds buffer size (%u)\n",
    byte_count);
  return -ENOBUFS;
 }
 target_hdr->smb_buf_length = cpu_to_be32(byte_count);


 memcpy(data_area_of_tgt, data_area_of_src, total_in_src);

 if (remaining != total_in_src) {

  cifs_dbg(FYI, "waiting for more secondary responses\n");
  return 1;
 }


 cifs_dbg(FYI, "found the last secondary response\n");
 return 0;
}
