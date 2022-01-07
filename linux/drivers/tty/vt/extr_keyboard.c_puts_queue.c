
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int port; } ;


 int tty_insert_flip_char (int *,char,int ) ;
 int tty_schedule_flip (int *) ;

__attribute__((used)) static void puts_queue(struct vc_data *vc, char *cp)
{
 while (*cp) {
  tty_insert_flip_char(&vc->port, *cp, 0);
  cp++;
 }
 tty_schedule_flip(&vc->port);
}
