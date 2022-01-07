
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_rport {int state; int mutex; } ;
typedef enum srp_rport_state { ____Placeholder_srp_rport_state } srp_rport_state ;


 int EINVAL ;




 int lockdep_assert_held (int *) ;

__attribute__((used)) static int srp_rport_set_state(struct srp_rport *rport,
          enum srp_rport_state new_state)
{
 enum srp_rport_state old_state = rport->state;

 lockdep_assert_held(&rport->mutex);

 switch (new_state) {
 case 128:
  switch (old_state) {
  case 129:
   goto invalid;
  default:
   break;
  }
  break;
 case 131:
  switch (old_state) {
  case 128:
   break;
  default:
   goto invalid;
  }
  break;
 case 130:
  switch (old_state) {
  case 129:
   goto invalid;
  default:
   break;
  }
  break;
 case 129:
  break;
 }
 rport->state = new_state;
 return 0;

invalid:
 return -EINVAL;
}
