
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8xxxu_txdesc32 {int csum; } ;
typedef int __le16 ;


 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void rtl8xxxu_calc_tx_desc_csum(struct rtl8xxxu_txdesc32 *tx_desc)
{
 __le16 *ptr = (__le16 *)tx_desc;
 u16 csum = 0;
 int i;





 tx_desc->csum = cpu_to_le16(0);

 for (i = 0; i < (sizeof(struct rtl8xxxu_txdesc32) / sizeof(u16)); i++)
  csum = csum ^ le16_to_cpu(ptr[i]);

 tx_desc->csum |= cpu_to_le16(csum);
}
