
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void set_txbuffer_desc_add_low_with_offset(__le32 *__pdesc,
        u8 __offset,
        u32 __val)
{
 *(__pdesc + 4 * __offset + 1) = cpu_to_le32(__val);
}
