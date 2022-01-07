
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int tty_port_hangup (int *) ;
 int ttynull_port ;

__attribute__((used)) static void ttynull_hangup(struct tty_struct *tty)
{
 tty_port_hangup(&ttynull_port);
}
