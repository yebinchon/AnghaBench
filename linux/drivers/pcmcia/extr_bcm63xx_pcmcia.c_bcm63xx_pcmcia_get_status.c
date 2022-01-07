
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {struct bcm63xx_pcmcia_socket* driver_data; } ;
struct bcm63xx_pcmcia_socket {int lock; } ;


 unsigned int __get_socket_status (struct bcm63xx_pcmcia_socket*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int bcm63xx_pcmcia_get_status(struct pcmcia_socket *sock,
         unsigned int *status)
{
 struct bcm63xx_pcmcia_socket *skt;

 skt = sock->driver_data;

 spin_lock_bh(&skt->lock);
 *status = __get_socket_status(skt);
 spin_unlock_bh(&skt->lock);

 return 0;
}
