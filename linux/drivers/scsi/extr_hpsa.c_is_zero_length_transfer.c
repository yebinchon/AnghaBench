
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
 scalar_t__ get_unaligned_be16 (int*) ;
 scalar_t__ get_unaligned_be32 (int*) ;

__attribute__((used)) static bool is_zero_length_transfer(u8 *cdb)
{
 u32 block_cnt;


 switch (cdb[0]) {
 case 138:
 case 132:
 case 135:
 case 129:
  block_cnt = get_unaligned_be16(&cdb[7]);
  break;
 case 137:
 case 131:
 case 134:
 case 128:
  block_cnt = get_unaligned_be32(&cdb[6]);
  break;
 case 136:
 case 130:
 case 133:
  block_cnt = get_unaligned_be32(&cdb[10]);
  break;
 default:
  return 0;
 }

 return block_cnt == 0;
}
