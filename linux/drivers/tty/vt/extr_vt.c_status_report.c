
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;


 int respond_string (char*,int ) ;

__attribute__((used)) static inline void status_report(struct tty_struct *tty)
{
 respond_string("\033[0n", tty->port);
}
