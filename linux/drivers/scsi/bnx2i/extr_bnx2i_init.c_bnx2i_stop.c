
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int hba_shutdown_tmo; int ofld_conns_active; int adapter_state; int eh_wait; int ep_destroy_list; int ep_ofld_list; int shost; } ;


 int ADAPTER_STATE_GOING_DOWN ;
 int ADAPTER_STATE_UP ;
 int HZ ;
 int bnx2i_chip_cleanup (struct bnx2i_hba*) ;
 int bnx2i_drop_session ;
 int clear_bit (int ,int *) ;
 int iscsi_host_for_each_session (int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int test_and_set_bit (int ,int *) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

void bnx2i_stop(void *handle)
{
 struct bnx2i_hba *hba = handle;
 int conns_active;
 int wait_delay = 1 * HZ;


 if (!test_and_set_bit(ADAPTER_STATE_GOING_DOWN,
         &hba->adapter_state)) {
  iscsi_host_for_each_session(hba->shost,
         bnx2i_drop_session);
  wait_delay = hba->hba_shutdown_tmo;
 }





 wait_event_interruptible_timeout(hba->eh_wait,
      (list_empty(&hba->ep_ofld_list) &&
      list_empty(&hba->ep_destroy_list)),
      2 * HZ);




 while (hba->ofld_conns_active) {
  conns_active = hba->ofld_conns_active;
  wait_event_interruptible_timeout(hba->eh_wait,
    (hba->ofld_conns_active != conns_active),
    wait_delay);
  if (hba->ofld_conns_active == conns_active)
   break;
 }
 bnx2i_chip_cleanup(hba);




 clear_bit(ADAPTER_STATE_GOING_DOWN, &hba->adapter_state);
 clear_bit(ADAPTER_STATE_UP, &hba->adapter_state);
}
