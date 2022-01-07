
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct rtsx_chip {int sgi; scalar_t__ host_sg_tbl_ptr; } ;
typedef int __le64 ;


 int HOST_SG_TBL_BUF_LEN ;
 int RTSX_SG_END ;
 int cpu_to_le64 (int) ;

__attribute__((used)) static inline void rtsx_add_sg_tbl(
 struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
{
 __le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);
 u64 val = 0;
 u32 temp_len = 0;
 u8 temp_opt = 0;

 do {
  if (len > 0x80000) {
   temp_len = 0x80000;
   temp_opt = option & (~RTSX_SG_END);
  } else {
   temp_len = len;
   temp_opt = option;
  }
  val = ((u64)addr << 32) | ((u64)temp_len << 12) | temp_opt;

  if (chip->sgi < (HOST_SG_TBL_BUF_LEN / 8))
   sgb[(chip->sgi)++] = cpu_to_le64(val);

  len -= temp_len;
  addr += temp_len;
 } while (len);
}
