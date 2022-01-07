
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_vport {int fc_flag; } ;
struct lpfc_hba {int wait_4_mlo_maint_flg; int fc_topology; int hbalock; int link_flag; } ;
struct TYPE_4__ {int* varWords; } ;
struct TYPE_5__ {int mbxCommand; TYPE_1__ un; } ;
typedef TYPE_2__ MAILBOX_t ;


 int EPERM ;
 int FC_OFFLINE_MODE ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_INIT ;
 int LOG_LIBDFC ;
 int LPFC_TOPOLOGY_PT_PT ;
 int LS_LOOPBACK_MODE ;
 int SETVAR_MLOMNT ;
 int SETVAR_MLORST ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lpfc_bsg_check_cmd_access(struct lpfc_hba *phba,
 MAILBOX_t *mb, struct lpfc_vport *vport)
{

 switch (mb->mbxCommand) {

 case 162:
 case 166:
 case 170:
 case 168:
 case 142:
 case 133:
 case 171:
 case 164:
 case 138:
 case 141:
 case 136:
  if (!(vport->fc_flag & FC_OFFLINE_MODE)) {
   lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2743 Command 0x%x is illegal in on-line "
    "state\n",
    mb->mbxCommand);
   return -EPERM;
  }
 case 130:
 case 129:
 case 158:
 case 151:
 case 155:
 case 150:
 case 147:
 case 145:
 case 149:
 case 152:
 case 163:
 case 165:
 case 132:
 case 161:
 case 146:
 case 160:
 case 159:
 case 172:
 case 167:
 case 137:
 case 128:
 case 134:
 case 154:
 case 153:
 case 131:
 case 157:
 case 156:
 case 139:
  break;
 case 135:
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
   "1226 mbox: set_variable 0x%x, 0x%x\n",
   mb->un.varWords[0],
   mb->un.varWords[1]);
  if ((mb->un.varWords[0] == SETVAR_MLOMNT)
   && (mb->un.varWords[1] == 1)) {
   phba->wait_4_mlo_maint_flg = 1;
  } else if (mb->un.varWords[0] == SETVAR_MLORST) {
   spin_lock_irq(&phba->hbalock);
   phba->link_flag &= ~LS_LOOPBACK_MODE;
   spin_unlock_irq(&phba->hbalock);
   phba->fc_topology = LPFC_TOPOLOGY_PT_PT;
  }
  break;
 case 148:
 case 144:
 case 143:
 case 169:
 case 140:
 default:
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
   "2742 Unknown Command 0x%x\n",
   mb->mbxCommand);
  return -EPERM;
 }

 return 0;
}
