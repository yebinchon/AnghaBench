
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xxs1500_pcmcia_sock {scalar_t__ virt_io; int socket; } ;
struct platform_device {int dummy; } ;


 int GPIO_CDA ;
 int free_irq (int ,struct xxs1500_pcmcia_sock*) ;
 int gpio_to_irq (int ) ;
 int iounmap (void*) ;
 int kfree (struct xxs1500_pcmcia_sock*) ;
 scalar_t__ mips_io_port_base ;
 int pcmcia_unregister_socket (int *) ;
 struct xxs1500_pcmcia_sock* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xxs1500_pcmcia_remove(struct platform_device *pdev)
{
 struct xxs1500_pcmcia_sock *sock = platform_get_drvdata(pdev);

 pcmcia_unregister_socket(&sock->socket);
 free_irq(gpio_to_irq(GPIO_CDA), sock);
 iounmap((void *)(sock->virt_io + (u32)mips_io_port_base));
 kfree(sock);

 return 0;
}
