
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 unsigned int ECR_MODE_MASK ;
 unsigned int ECR_MODE_PS2 ;
 unsigned int ECR_MODE_SPP ;
 unsigned int ECR_SERVINTR ;
 unsigned int ECR_nERRINTR ;
 unsigned int parport_ip32_read_econtrol (struct parport*) ;
 int parport_ip32_write_econtrol (struct parport*,unsigned int) ;

__attribute__((used)) static void parport_ip32_set_mode(struct parport *p, unsigned int mode)
{
 unsigned int omode;

 mode &= ECR_MODE_MASK;
 omode = parport_ip32_read_econtrol(p) & ECR_MODE_MASK;

 if (!(mode == ECR_MODE_SPP || mode == ECR_MODE_PS2
       || omode == ECR_MODE_SPP || omode == ECR_MODE_PS2)) {

  unsigned int ecr = ECR_MODE_PS2 | ECR_nERRINTR | ECR_SERVINTR;
  parport_ip32_write_econtrol(p, ecr);
 }
 parport_ip32_write_econtrol(p, mode | ECR_nERRINTR | ECR_SERVINTR);
}
