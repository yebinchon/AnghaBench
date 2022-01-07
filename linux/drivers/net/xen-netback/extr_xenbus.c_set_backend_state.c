
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backend_info {int state; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int BUG () ;





 int backend_connect (struct backend_info*) ;
 int backend_disconnect (struct backend_info*) ;
 int backend_switch_state (struct backend_info*,int const) ;

__attribute__((used)) static void set_backend_state(struct backend_info *be,
         enum xenbus_state state)
{
 while (be->state != state) {
  switch (be->state) {
  case 128:
   switch (state) {
   case 129:
   case 130:
   case 131:
    backend_switch_state(be, 129);
    break;
   case 132:
    backend_switch_state(be, 132);
    break;
   default:
    BUG();
   }
   break;
  case 132:
   switch (state) {
   case 129:
   case 130:
    backend_switch_state(be, 129);
    break;
   case 131:
    backend_switch_state(be, 131);
    break;
   default:
    BUG();
   }
   break;
  case 129:
   switch (state) {
   case 130:
    backend_connect(be);
    backend_switch_state(be, 130);
    break;
   case 131:
   case 132:
    backend_switch_state(be, 131);
    break;
   default:
    BUG();
   }
   break;
  case 130:
   switch (state) {
   case 129:
   case 131:
   case 132:
    backend_disconnect(be);
    backend_switch_state(be, 131);
    break;
   default:
    BUG();
   }
   break;
  case 131:
   switch (state) {
   case 129:
   case 130:
   case 132:
    backend_switch_state(be, 132);
    break;
   default:
    BUG();
   }
   break;
  default:
   BUG();
  }
 }
}
