
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int bitrev8 (int ) ;

__attribute__((used)) static inline void reverse_order(u32 *l)
{
 u8 *a = (u8 *)l;
 a[0] = bitrev8(a[0]);
 a[1] = bitrev8(a[1]);
 a[2] = bitrev8(a[2]);
 a[3] = bitrev8(a[3]);
}
