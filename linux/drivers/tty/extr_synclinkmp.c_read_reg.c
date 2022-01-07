
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SLMP_INFO ;


 int CALC_REGADDR () ;
 unsigned char* RegAddr ;

__attribute__((used)) static unsigned char read_reg(SLMP_INFO * info, unsigned char Addr)
{
 CALC_REGADDR();
 return *RegAddr;
}
