
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SLMP_INFO ;


 int DMER ;
 int DPCR ;
 int IER0 ;
 int IER1 ;
 int IER2 ;
 int ITCR ;
 int PABR0 ;
 int PABR1 ;
 int WCRH ;
 int WCRL ;
 int WCRM ;
 int dma_priority ;
 int write_reg (int *,int ,int) ;

__attribute__((used)) static bool sca_init(SLMP_INFO *info)
{

 write_reg(info, PABR0, 0);
 write_reg(info, PABR1, 0);
 write_reg(info, WCRL, 0);
 write_reg(info, WCRM, 0);
 write_reg(info, WCRH, 0);
 write_reg(info, DPCR, dma_priority);


 write_reg(info, DMER, 0x80);


 write_reg(info, IER0, 0xff);
 write_reg(info, IER1, 0xff);
 write_reg(info, IER2, 0xf0);







 write_reg(info, ITCR, 0);

 return 1;
}
