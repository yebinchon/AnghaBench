
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parport_ip32_private {unsigned int fifo_depth; } ;
struct parport {TYPE_1__* cad; struct parport* physport; struct parport_ip32_private* private_data; } ;
struct TYPE_2__ {unsigned long timeout; } ;


 unsigned int ECR_F_EMPTY ;
 int FIFO_POLLING_INTERVAL ;
 unsigned long jiffies ;
 scalar_t__ parport_ip32_fifo_wait_break (struct parport*,unsigned long) ;
 unsigned int parport_ip32_read_econtrol (struct parport*) ;
 int udelay (int ) ;

__attribute__((used)) static unsigned int parport_ip32_fwp_wait_polling(struct parport *p)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 struct parport * const physport = p->physport;
 unsigned long expire;
 unsigned int count;
 unsigned int ecr;

 expire = jiffies + physport->cad->timeout;
 count = 0;
 while (1) {
  if (parport_ip32_fifo_wait_break(p, expire))
   break;





  ecr = parport_ip32_read_econtrol(p);
  if (ecr & ECR_F_EMPTY) {

   count = priv->fifo_depth;
   break;
  }


  udelay(FIFO_POLLING_INTERVAL);
 }

 return count;
}
