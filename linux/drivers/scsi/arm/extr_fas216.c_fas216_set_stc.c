
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FAS216_Info ;


 int REG_STCH ;
 int REG_STCL ;
 int REG_STCM ;
 int fas216_writeb (int *,int ,unsigned int) ;

__attribute__((used)) static void fas216_set_stc(FAS216_Info *info, unsigned int length)
{
 fas216_writeb(info, REG_STCL, length);
 fas216_writeb(info, REG_STCM, length >> 8);
 fas216_writeb(info, REG_STCH, length >> 16);
}
