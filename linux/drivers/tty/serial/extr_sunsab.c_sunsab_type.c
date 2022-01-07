
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_sunsab_port {size_t type; } ;
struct uart_port {int dummy; } ;


 char** sab82532_version ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static const char *sunsab_type(struct uart_port *port)
{
 struct uart_sunsab_port *up = (void *)port;
 static char buf[36];

 sprintf(buf, "SAB82532 %s", sab82532_version[up->type]);
 return buf;
}
