
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u32 rsi_get_queueno(u8 *addr, u16 offset)
{
 return (le16_to_cpu(*(__le16 *)&addr[offset]) & 0x7000) >> 12;
}
