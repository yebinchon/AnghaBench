
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int BUG_ON (int) ;
 int IO_ACCEL_INELIGIBLE ;
 int READ_10 ;


 int WRITE_10 ;


 int get_unaligned_be32 (int*) ;

__attribute__((used)) static int fixup_ioaccel_cdb(u8 *cdb, int *cdb_len)
{
 int is_write = 0;
 u32 block;
 u32 block_cnt;


 switch (cdb[0]) {
 case 128:
 case 129:
  is_write = 1;

 case 130:
 case 131:
  if (*cdb_len == 6) {
   block = (((cdb[1] & 0x1F) << 16) |
    (cdb[2] << 8) |
    cdb[3]);
   block_cnt = cdb[4];
   if (block_cnt == 0)
    block_cnt = 256;
  } else {
   BUG_ON(*cdb_len != 12);
   block = get_unaligned_be32(&cdb[2]);
   block_cnt = get_unaligned_be32(&cdb[6]);
  }
  if (block_cnt > 0xffff)
   return IO_ACCEL_INELIGIBLE;

  cdb[0] = is_write ? WRITE_10 : READ_10;
  cdb[1] = 0;
  cdb[2] = (u8) (block >> 24);
  cdb[3] = (u8) (block >> 16);
  cdb[4] = (u8) (block >> 8);
  cdb[5] = (u8) (block);
  cdb[6] = 0;
  cdb[7] = (u8) (block_cnt >> 8);
  cdb[8] = (u8) (block_cnt);
  cdb[9] = 0;
  *cdb_len = 10;
  break;
 }
 return 0;
}
