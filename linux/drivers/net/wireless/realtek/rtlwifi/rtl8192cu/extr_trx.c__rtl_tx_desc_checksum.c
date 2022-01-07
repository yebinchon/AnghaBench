
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int __le32 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;
 int set_tx_desc_tx_desc_checksum (int *,int) ;

__attribute__((used)) static void _rtl_tx_desc_checksum(__le32 *txdesc)
{
 __le16 *ptr = (__le16 *)txdesc;
 u16 checksum = 0;
 u32 index;


 set_tx_desc_tx_desc_checksum(txdesc, 0);
 for (index = 0; index < 16; index++)
  checksum = checksum ^ le16_to_cpu(*(ptr + index));
 set_tx_desc_tx_desc_checksum(txdesc, checksum);
}
