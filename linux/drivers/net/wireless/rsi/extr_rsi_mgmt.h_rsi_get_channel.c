
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



__attribute__((used)) static inline u8 rsi_get_channel(u8 *addr)
{
 return *(char *)(addr + 15);
}
