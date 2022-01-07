
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int transp4 (int *,int,int) ;
 int transp4x (int *,int,int) ;

__attribute__((used)) static void c2p_16x8(u32 d[4])
{
 transp4(d, 8, 2);
 transp4(d, 1, 2);
 transp4x(d, 16, 2);
 transp4x(d, 2, 2);
 transp4(d, 4, 1);
}
