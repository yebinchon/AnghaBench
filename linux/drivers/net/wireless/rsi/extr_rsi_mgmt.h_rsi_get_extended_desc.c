
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __le16 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline u8 rsi_get_extended_desc(u8 *addr, u16 offset)
{
 return le16_to_cpu(*((__le16 *)&addr[offset + 4])) & 0x00ff;
}
