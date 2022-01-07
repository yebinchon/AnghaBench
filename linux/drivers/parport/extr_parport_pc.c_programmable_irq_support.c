
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int CONFIGB (struct parport*) ;
 int ECONTROL (struct parport*) ;
 int ECR_CNF ;
 int ECR_WRITE (struct parport*,unsigned char) ;

 int inb (int ) ;

__attribute__((used)) static int programmable_irq_support(struct parport *pb)
{
 int irq, intrLine;
 unsigned char oecr = inb(ECONTROL(pb));
 static const int lookup[8] = {
  128, 7, 9, 10, 11, 14, 15, 5
 };

 ECR_WRITE(pb, ECR_CNF << 5);

 intrLine = (inb(CONFIGB(pb)) >> 3) & 0x07;
 irq = lookup[intrLine];

 ECR_WRITE(pb, oecr);
 return irq;
}
