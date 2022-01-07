
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int dummy; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ socket_state_t ;


 scalar_t__ BALLOON3_CF_CONTROL_REG ;
 int BALLOON3_CF_RESET ;
 int BALLOON3_FPGA_SETnCLR ;
 int SS_RESET ;
 int __raw_writew (int ,scalar_t__) ;

__attribute__((used)) static int balloon3_pcmcia_configure_socket(struct soc_pcmcia_socket *skt,
           const socket_state_t *state)
{
 __raw_writew(BALLOON3_CF_RESET, BALLOON3_CF_CONTROL_REG +
   ((state->flags & SS_RESET) ?
   BALLOON3_FPGA_SETnCLR : 0));
 return 0;
}
