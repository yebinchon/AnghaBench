
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_info {int port; struct raw3215_info* buffer; struct raw3215_info* inbuf; } ;


 int kfree (struct raw3215_info*) ;
 int tty_port_destroy (int *) ;

__attribute__((used)) static void raw3215_free_info(struct raw3215_info *raw)
{
 kfree(raw->inbuf);
 kfree(raw->buffer);
 tty_port_destroy(&raw->port);
 kfree(raw);
}
