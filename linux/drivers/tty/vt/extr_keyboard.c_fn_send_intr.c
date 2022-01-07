
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int port; } ;


 int TTY_BREAK ;
 int tty_insert_flip_char (int *,int ,int ) ;
 int tty_schedule_flip (int *) ;

__attribute__((used)) static void fn_send_intr(struct vc_data *vc)
{
 tty_insert_flip_char(&vc->port, 0, TTY_BREAK);
 tty_schedule_flip(&vc->port);
}
