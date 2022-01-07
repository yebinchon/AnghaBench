
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int cpp_daisy (struct parport*,int) ;

void parport_daisy_deselect_all(struct parport *port)
{
 cpp_daisy(port, 0x30);
}
