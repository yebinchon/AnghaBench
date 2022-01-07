
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_sci_spi {int val; } ;


 int SCSPTR (struct sh_sci_spi*) ;
 int iowrite8 (int,int ) ;

__attribute__((used)) static inline void setbits(struct sh_sci_spi *sp, int bits, int on)
{
 if (on)
  sp->val |= bits;
 else
  sp->val &= ~bits;

 iowrite8(sp->val, SCSPTR(sp));
}
