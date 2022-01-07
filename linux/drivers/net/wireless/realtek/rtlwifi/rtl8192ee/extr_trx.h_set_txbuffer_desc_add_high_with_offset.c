
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ __le32 ;


 scalar_t__ cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_txbuffer_desc_add_high_with_offset(__le32 *pbd, u8 off,
         u32 val, bool dma64)
{
 if (dma64)
  *(pbd + 4 * off + 2) = cpu_to_le32(val);
 else
  *(pbd + 4 * off + 2) = 0;
}
