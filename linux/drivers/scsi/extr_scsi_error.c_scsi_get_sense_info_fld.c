
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int get_unaligned_be32 (int const*) ;
 int get_unaligned_be64 (int const*) ;
 int* scsi_sense_desc_find (int const*,int,int ) ;

bool scsi_get_sense_info_fld(const u8 *sense_buffer, int sb_len,
        u64 *info_out)
{
 const u8 * ucp;

 if (sb_len < 7)
  return 0;
 switch (sense_buffer[0] & 0x7f) {
 case 0x70:
 case 0x71:
  if (sense_buffer[0] & 0x80) {
   *info_out = get_unaligned_be32(&sense_buffer[3]);
   return 1;
  }
  return 0;
 case 0x72:
 case 0x73:
  ucp = scsi_sense_desc_find(sense_buffer, sb_len,
        0 );
  if (ucp && (0xa == ucp[1])) {
   *info_out = get_unaligned_be64(&ucp[4]);
   return 1;
  }
  return 0;
 default:
  return 0;
 }
}
