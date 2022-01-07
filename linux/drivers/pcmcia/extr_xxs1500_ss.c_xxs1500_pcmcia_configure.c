
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xxs1500_pcmcia_sock {unsigned int old_flags; } ;
struct socket_state_t {int Vcc; unsigned int flags; } ;
struct pcmcia_socket {int dummy; } ;


 int EINVAL ;
 int GPIO_OUTEN ;
 int GPIO_POWER ;
 int GPIO_RESET ;
 unsigned int SS_RESET ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 struct xxs1500_pcmcia_sock* to_xxs_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int xxs1500_pcmcia_configure(struct pcmcia_socket *skt,
        struct socket_state_t *state)
{
 struct xxs1500_pcmcia_sock *sock = to_xxs_socket(skt);
 unsigned int changed;


 switch (state->Vcc) {
 case 0:
  gpio_set_value(GPIO_POWER, 1);
  break;
 case 33:
  gpio_set_value(GPIO_POWER, 0);
  break;
 case 50:
 default:
  return -EINVAL;
 }

 changed = state->flags ^ sock->old_flags;

 if (changed & SS_RESET) {
  if (state->flags & SS_RESET) {
   gpio_set_value(GPIO_RESET, 1);
   gpio_set_value(GPIO_OUTEN, 1);
  } else {
   gpio_set_value(GPIO_RESET, 0);
   gpio_set_value(GPIO_OUTEN, 0);
   msleep(500);
  }
 }

 sock->old_flags = state->flags;

 return 0;
}
