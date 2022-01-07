
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 get_txbuffer_desc_addr_high(__le32 *pbd, u32 off, bool dma64)
{
 if (dma64)
  return le32_to_cpu(*((pbd + 4 * off + 2)));
 return 0;
}
