
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_fcport_s {int speed; } ;
typedef enum bfa_port_speed { ____Placeholder_bfa_port_speed } bfa_port_speed ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (struct bfa_s*) ;

enum bfa_port_speed
bfa_fcport_get_speed(struct bfa_s *bfa)
{
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(bfa);

 return fcport->speed;
}
