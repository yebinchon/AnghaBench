
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ecr; int dcr; } ;
struct TYPE_4__ {TYPE_1__ ip32; } ;
struct parport_state {TYPE_2__ u; } ;
struct parport {int dummy; } ;


 int __parport_ip32_read_control (struct parport*) ;
 int parport_ip32_read_econtrol (struct parport*) ;

__attribute__((used)) static void parport_ip32_save_state(struct parport *p,
        struct parport_state *s)
{
 s->u.ip32.dcr = __parport_ip32_read_control(p);
 s->u.ip32.ecr = parport_ip32_read_econtrol(p);
}
