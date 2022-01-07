
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __le32 ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 get_txbuffer_desc_addr_low(__le32 *__pdesc, u8 __offset)
{
 return le32_to_cpu(*((__pdesc + 4 * __offset + 1)));
}
