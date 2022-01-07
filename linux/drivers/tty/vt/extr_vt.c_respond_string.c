
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;


 int tty_insert_flip_char (struct tty_port*,char const,int ) ;
 int tty_schedule_flip (struct tty_port*) ;

__attribute__((used)) static void respond_string(const char *p, struct tty_port *port)
{
 while (*p) {
  tty_insert_flip_char(port, *p, 0);
  p++;
 }
 tty_schedule_flip(port);
}
