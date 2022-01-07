
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dev; } ;


 int put_device (int *) ;

void pcmcia_put_socket(struct pcmcia_socket *skt)
{
 put_device(&skt->dev);
}
