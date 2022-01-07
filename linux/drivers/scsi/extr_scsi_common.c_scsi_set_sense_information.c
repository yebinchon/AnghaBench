
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;


 int EINVAL ;
 int put_unaligned_be32 (int ,int*) ;
 int put_unaligned_be64 (int,int*) ;
 scalar_t__ scsi_sense_desc_find (int*,int,int ) ;

int scsi_set_sense_information(u8 *buf, int buf_len, u64 info)
{
 if ((buf[0] & 0x7f) == 0x72) {
  u8 *ucp, len;

  len = buf[7];
  ucp = (char *)scsi_sense_desc_find(buf, len + 8, 0);
  if (!ucp) {
   buf[7] = len + 0xc;
   ucp = buf + 8 + len;
  }

  if (buf_len < len + 0xc)

   return -EINVAL;

  ucp[0] = 0;
  ucp[1] = 0xa;
  ucp[2] = 0x80;
  ucp[3] = 0;
  put_unaligned_be64(info, &ucp[4]);
 } else if ((buf[0] & 0x7f) == 0x70) {





  if (info <= 0xffffffffUL)
   buf[0] |= 0x80;
  else
   buf[0] &= 0x7f;
  put_unaligned_be32((u32)info, &buf[3]);
 }

 return 0;
}
