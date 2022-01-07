
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int logical_speed; int speed; } ;
struct TYPE_4__ {TYPE_1__ link_state; } ;
struct lpfc_hba {scalar_t__ sli_rev; int fc_linkspeed; TYPE_2__ sli4_hba; } ;
 scalar_t__ LPFC_SLI_REV3 ;
 int lpfc_is_link_up (struct lpfc_hba*) ;

uint32_t
lpfc_sli_port_speed_get(struct lpfc_hba *phba)
{
 uint32_t link_speed;

 if (!lpfc_is_link_up(phba))
  return 0;

 if (phba->sli_rev <= LPFC_SLI_REV3) {
  switch (phba->fc_linkspeed) {
  case 131:
   link_speed = 1000;
   break;
  case 130:
   link_speed = 2000;
   break;
  case 129:
   link_speed = 4000;
   break;
  case 128:
   link_speed = 8000;
   break;
  case 133:
   link_speed = 10000;
   break;
  case 132:
   link_speed = 16000;
   break;
  default:
   link_speed = 0;
  }
 } else {
  if (phba->sli4_hba.link_state.logical_speed)
   link_speed =
         phba->sli4_hba.link_state.logical_speed;
  else
   link_speed = phba->sli4_hba.link_state.speed;
 }
 return link_speed;
}
