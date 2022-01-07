
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;


 unsigned long inl (int ) ;
 int outl (unsigned long,int ) ;

__attribute__((used)) static void supermicro_old_pre_start(struct resource *smires)
{
 unsigned long val32;


 val32 = inl(smires->start);
 val32 &= 0xffffdfff;
 outl(val32, smires->start);
}
