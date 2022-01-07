
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct tx_desc {int txdw7; } ;
typedef int __le16 ;


 int cpu_to_le32 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void rtl8188eu_cal_txdesc_chksum(struct tx_desc *ptxdesc)
{
 u16 *usptr = (u16 *)ptxdesc;
 u32 count = 16;
 u32 index;
 u16 checksum = 0;


 ptxdesc->txdw7 &= cpu_to_le32(0xffff0000);

 for (index = 0; index < count; index++)
  checksum = checksum ^ le16_to_cpu(*(__le16 *)(usptr + index));
 ptxdesc->txdw7 |= cpu_to_le32(0x0000ffff & checksum);
}
