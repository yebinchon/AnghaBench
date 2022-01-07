
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct platform_device {int dummy; } ;
struct db1x_pcmcia_sock {scalar_t__ virt_io; int socket; } ;


 int db1x_pcmcia_free_irqs (struct db1x_pcmcia_sock*) ;
 int iounmap (void*) ;
 int kfree (struct db1x_pcmcia_sock*) ;
 scalar_t__ mips_io_port_base ;
 int pcmcia_unregister_socket (int *) ;
 struct db1x_pcmcia_sock* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int db1x_pcmcia_socket_remove(struct platform_device *pdev)
{
 struct db1x_pcmcia_sock *sock = platform_get_drvdata(pdev);

 db1x_pcmcia_free_irqs(sock);
 pcmcia_unregister_socket(&sock->socket);
 iounmap((void *)(sock->virt_io + (u32)mips_io_port_base));
 kfree(sock);

 return 0;
}
