
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int eppAddr; } ;
struct parport_ip32_private {TYPE_2__ regs; } ;
struct parport {TYPE_1__* physport; } ;
struct TYPE_3__ {struct parport_ip32_private* private_data; } ;


 size_t parport_ip32_epp_read (int ,struct parport*,void*,size_t,int) ;

__attribute__((used)) static size_t parport_ip32_epp_read_addr(struct parport *p, void *buf,
      size_t len, int flags)
{
 struct parport_ip32_private * const priv = p->physport->private_data;
 return parport_ip32_epp_read(priv->regs.eppAddr, p, buf, len, flags);
}
