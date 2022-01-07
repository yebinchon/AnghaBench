
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int EINVAL ;
 int put_unaligned_be16 (int ,int*) ;
 scalar_t__ scsi_sense_desc_find (int*,int,int) ;

int scsi_set_sense_field_pointer(u8 *buf, int buf_len, u16 fp, u8 bp, bool cd)
{
 u8 *ucp, len;

 if ((buf[0] & 0x7f) == 0x72) {
  len = buf[7];
  ucp = (char *)scsi_sense_desc_find(buf, len + 8, 2);
  if (!ucp) {
   buf[7] = len + 8;
   ucp = buf + 8 + len;
  }

  if (buf_len < len + 8)

   return -EINVAL;

  ucp[0] = 2;
  ucp[1] = 6;
  ucp[4] = 0x80;
  if (cd)
   ucp[4] |= 0x40;
  if (bp < 0x8)
   ucp[4] |= 0x8 | bp;
  put_unaligned_be16(fp, &ucp[5]);
 } else if ((buf[0] & 0x7f) == 0x70) {
  len = buf[7];
  if (len < 18)
   buf[7] = 18;

  buf[15] = 0x80;
  if (cd)
   buf[15] |= 0x40;
  if (bp < 0x8)
   buf[15] |= 0x8 | bp;
  put_unaligned_be16(fp, &buf[16]);
 }

 return 0;
}
