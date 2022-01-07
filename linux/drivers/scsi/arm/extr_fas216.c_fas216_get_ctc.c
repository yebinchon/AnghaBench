
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FAS216_Info ;


 int REG_CTCH ;
 int REG_CTCL ;
 int REG_CTCM ;
 int fas216_readb (int *,int ) ;

__attribute__((used)) static unsigned int fas216_get_ctc(FAS216_Info *info)
{
 return fas216_readb(info, REG_CTCL) +
        (fas216_readb(info, REG_CTCM) << 8) +
        (fas216_readb(info, REG_CTCH) << 16);
}
