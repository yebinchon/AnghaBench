
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct max310x_one {int md_work; } ;


 int schedule_work (int *) ;
 struct max310x_one* to_max310x_port (struct uart_port*) ;

__attribute__((used)) static void max310x_set_mctrl(struct uart_port *port, unsigned int mctrl)
{
 struct max310x_one *one = to_max310x_port(port);

 schedule_work(&one->md_work);
}
