
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct NvRamType {int max_tag; int channel_cfg; int scsi_id; } ;
struct AdapterCtlBlk {int srb_count; int tag_max_num; int gmode2; int lun_chk; int scan_devices; int hostid_bit; int srb_free_list; TYPE_2__* srb_array; scalar_t__ msg_len; scalar_t__* dcb_map; TYPE_1__* scsi_host; scalar_t__ config; scalar_t__ acb_flag; int sel_timeout; int selto_timer; int waiting_timer; int srb; int * tmp_srb; int * active_dcb; int * dcb_run_robin; int dcb_list; struct NvRamType eeprom; } ;
struct TYPE_4__ {int list; } ;
struct TYPE_3__ {int this_id; } ;


 int DC395x_MAX_SCSI_ID ;
 int DC395x_MAX_SRB_CNT ;
 int DC395x_SEL_TIMEOUT ;
 int INIT_LIST_HEAD (int *) ;
 int NAC_SCANLUN ;
 int list_add_tail (int *,int *) ;
 int timer_setup (int *,int *,int ) ;
 int * waiting_timeout ;

__attribute__((used)) static void adapter_init_params(struct AdapterCtlBlk *acb)
{
 struct NvRamType *eeprom = &acb->eeprom;
 int i;





 INIT_LIST_HEAD(&acb->dcb_list);
 acb->dcb_run_robin = ((void*)0);
 acb->active_dcb = ((void*)0);

 INIT_LIST_HEAD(&acb->srb_free_list);

 acb->tmp_srb = &acb->srb;
 timer_setup(&acb->waiting_timer, waiting_timeout, 0);
 timer_setup(&acb->selto_timer, ((void*)0), 0);

 acb->srb_count = DC395x_MAX_SRB_CNT;

 acb->sel_timeout = DC395x_SEL_TIMEOUT;


 acb->tag_max_num = 1 << eeprom->max_tag;
 if (acb->tag_max_num > 30)
  acb->tag_max_num = 30;

 acb->acb_flag = 0;
 acb->gmode2 = eeprom->channel_cfg;
 acb->config = 0;

 if (eeprom->channel_cfg & NAC_SCANLUN)
  acb->lun_chk = 1;
 acb->scan_devices = 1;

 acb->scsi_host->this_id = eeprom->scsi_id;
 acb->hostid_bit = (1 << acb->scsi_host->this_id);

 for (i = 0; i < DC395x_MAX_SCSI_ID; i++)
  acb->dcb_map[i] = 0;

 acb->msg_len = 0;


 for (i = 0; i < acb->srb_count - 1; i++)
  list_add_tail(&acb->srb_array[i].list, &acb->srb_free_list);
}
