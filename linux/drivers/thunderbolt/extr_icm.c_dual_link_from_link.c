
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 dual_link_from_link(u8 link)
{
 return link ? ((link - 1) ^ 0x01) + 1 : 0;
}
