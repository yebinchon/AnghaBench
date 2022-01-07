
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db1x_pcmcia_sock {int insert_gpio; } ;


 int gpio_get_value (int ) ;

__attribute__((used)) static int db1000_card_inserted(struct db1x_pcmcia_sock *sock)
{
 return !gpio_get_value(sock->insert_gpio);
}
