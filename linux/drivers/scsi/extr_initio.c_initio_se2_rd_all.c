
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ NVM_Signature; scalar_t__ NVM_CheckSum; } ;


 scalar_t__ INI_SIGNATURE ;
 TYPE_1__ i91unvram ;
 TYPE_1__* i91unvramp ;
 int initio_se2_rd (unsigned long,int) ;

__attribute__((used)) static int initio_se2_rd_all(unsigned long base)
{
 int i;
 u16 chksum = 0;
 u16 *np;

 i91unvramp = &i91unvram;
 np = (u16 *) i91unvramp;
 for (i = 0; i < 32; i++)
  *np++ = initio_se2_rd(base, i);


 if (i91unvramp->NVM_Signature != INI_SIGNATURE)
  return -1;

 np = (u16 *) i91unvramp;
 for (i = 0; i < 31; i++)
  chksum += *np++;
 if (i91unvramp->NVM_CheckSum != chksum)
  return -1;
 return 1;
}
