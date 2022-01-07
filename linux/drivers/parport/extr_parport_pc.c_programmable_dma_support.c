
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int CONFIGB (struct parport*) ;
 int ECONTROL (struct parport*) ;
 int ECR_CNF ;
 int ECR_WRITE (struct parport*,unsigned char) ;
 int PARPORT_DMA_NONE ;
 int frob_set_mode (struct parport*,int ) ;
 int inb (int ) ;

__attribute__((used)) static int programmable_dma_support(struct parport *p)
{
 unsigned char oecr = inb(ECONTROL(p));
 int dma;

 frob_set_mode(p, ECR_CNF);

 dma = inb(CONFIGB(p)) & 0x07;


 if ((dma & 0x03) == 0)
  dma = PARPORT_DMA_NONE;

 ECR_WRITE(p, oecr);
 return dma;
}
