
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_tx_buff_desc_addr_low_0(__le32 *__pdesc, u32 __val)
{
 *(__pdesc + 1) = cpu_to_le32(__val);
}
