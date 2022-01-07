
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int port; } ;


 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_string (int *,unsigned char*,size_t) ;

void gigaset_if_receive(struct cardstate *cs,
   unsigned char *buffer, size_t len)
{
 tty_insert_flip_string(&cs->port, buffer, len);
 tty_flip_buffer_push(&cs->port);
}
