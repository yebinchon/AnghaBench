
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ __le32 ;


 scalar_t__ cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_rx_buffer_physical_high(__le32 *__rx_status_desc,
            u32 __val, bool dma64)
{
 if (dma64)
  *(__rx_status_desc + 2) = cpu_to_le32(__val);
 else
  *(__rx_status_desc + 2) = 0;
}
