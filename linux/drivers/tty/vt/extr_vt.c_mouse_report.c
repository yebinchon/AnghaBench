
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;


 int respond_string (char*,int ) ;
 int sprintf (char*,char*,char,char,char) ;

void mouse_report(struct tty_struct *tty, int butt, int mrx, int mry)
{
 char buf[8];

 sprintf(buf, "\033[M%c%c%c", (char)(' ' + butt), (char)('!' + mrx),
  (char)('!' + mry));
 respond_string(buf, tty->port);
}
