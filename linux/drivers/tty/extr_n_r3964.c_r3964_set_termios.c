
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct ktermios {int dummy; } ;


 int TRACE_L (char*) ;

__attribute__((used)) static void r3964_set_termios(struct tty_struct *tty, struct ktermios *old)
{
 TRACE_L("set_termios");
}
