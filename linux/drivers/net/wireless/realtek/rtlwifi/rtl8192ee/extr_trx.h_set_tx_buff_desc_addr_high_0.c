
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ __le32 ;


 scalar_t__ cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_tx_buff_desc_addr_high_0(__le32 *pdesc, u32 val,
      bool dma64)
{
 if (dma64)
  *(pdesc + 2) = cpu_to_le32(val);
 else
  *(pdesc + 2) = 0;
}
