
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int DCR_DIR ;
 int __parport_ip32_frob_control (struct parport*,int ,int ) ;

__attribute__((used)) static inline void parport_ip32_data_forward(struct parport *p)
{
 __parport_ip32_frob_control(p, DCR_DIR, 0);
}
