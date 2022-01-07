
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct bfa_rport_s {TYPE_1__ rport_info; } ;
typedef enum bfa_port_speed { ____Placeholder_bfa_port_speed } bfa_port_speed ;


 int BFA_PORT_SPEED_AUTO ;
 int BFA_RPORT_SM_SET_SPEED ;
 int WARN_ON (int) ;
 int bfa_sm_send_event (struct bfa_rport_s*,int ) ;

void
bfa_rport_speed(struct bfa_rport_s *rport, enum bfa_port_speed speed)
{
 WARN_ON(speed == 0);
 WARN_ON(speed == BFA_PORT_SPEED_AUTO);

 if (rport) {
  rport->rport_info.speed = speed;
  bfa_sm_send_event(rport, BFA_RPORT_SM_SET_SPEED);
 }
}
