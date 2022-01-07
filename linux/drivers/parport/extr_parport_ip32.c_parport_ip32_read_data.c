
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct parport_ip32_private {TYPE_2__ regs; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_3__ {struct parport_ip32_private* private_data; } ;


 unsigned char readb (int ) ;

__attribute__((used)) static inline unsigned char parport_ip32_read_data(struct parport *p)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 return readb(priv->regs.data);
}
