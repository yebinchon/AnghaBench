
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int action; } ;
typedef enum ibmvfc_host_action { ____Placeholder_ibmvfc_host_action } ibmvfc_host_action ;
__attribute__((used)) static void ibmvfc_set_host_action(struct ibmvfc_host *vhost,
       enum ibmvfc_host_action action)
{
 switch (action) {
 case 140:
  if (vhost->action == 138)
   vhost->action = action;
  break;
 case 136:
  if (vhost->action == 137)
   vhost->action = action;
  break;
 case 138:
  if (vhost->action == 139)
   vhost->action = action;
  break;
 case 134:
  switch (vhost->action) {
  case 138:
  case 135:
  case 129:
   vhost->action = action;
   break;
  default:
   break;
  }
  break;
 case 128:
  if (vhost->action == 140)
   vhost->action = action;
  break;
 case 139:
 case 130:
  switch (vhost->action) {
  case 131:
  case 132:
   break;
  default:
   vhost->action = action;
   break;
  }
  break;
 case 137:
 case 133:
 case 129:
 case 135:
 case 131:
 case 132:
 default:
  vhost->action = action;
  break;
 }
}
