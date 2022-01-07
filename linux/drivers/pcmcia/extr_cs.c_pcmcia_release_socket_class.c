
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class {int dummy; } ;


 int complete (int *) ;
 int pcmcia_unload ;

__attribute__((used)) static void pcmcia_release_socket_class(struct class *data)
{
 complete(&pcmcia_unload);
}
