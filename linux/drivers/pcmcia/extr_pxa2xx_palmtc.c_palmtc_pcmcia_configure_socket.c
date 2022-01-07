
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int dummy; } ;
struct TYPE_3__ {int Vcc; } ;
typedef TYPE_1__ socket_state_t ;


 int palmtc_wifi_powerdown () ;
 int palmtc_wifi_powerup () ;

__attribute__((used)) static int palmtc_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
     const socket_state_t *state)
{
 int ret = 1;

 if (state->Vcc == 0)
  ret = palmtc_wifi_powerdown();
 else if (state->Vcc == 33)
  ret = palmtc_wifi_powerup();

 return ret;
}
