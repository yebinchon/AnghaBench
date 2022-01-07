
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ap_queue_status {scalar_t__ response_code; } ;
struct TYPE_2__ {int aqm; } ;


 int AP_DBF (int ,char*,int) ;
 int AP_DEVICES ;
 int AP_DOMAINS ;
 int AP_MKQID (int,int) ;
 scalar_t__ AP_RESPONSE_NORMAL ;
 int DBF_DEBUG ;
 int ap_apft_available () ;
 int ap_domain_index ;
 int ap_domain_lock ;
 TYPE_1__ ap_perms ;
 int ap_test_config_card_id (int) ;
 int ap_test_config_usage_domain (int) ;
 struct ap_queue_status ap_test_queue (int ,int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit_inv (int,int ) ;

__attribute__((used)) static void ap_select_domain(void)
{
 int count, max_count, best_domain;
 struct ap_queue_status status;
 int i, j;






 spin_lock_bh(&ap_domain_lock);
 if (ap_domain_index >= 0) {

  spin_unlock_bh(&ap_domain_lock);
  return;
 }
 best_domain = -1;
 max_count = 0;
 for (i = 0; i < AP_DOMAINS; i++) {
  if (!ap_test_config_usage_domain(i) ||
      !test_bit_inv(i, ap_perms.aqm))
   continue;
  count = 0;
  for (j = 0; j < AP_DEVICES; j++) {
   if (!ap_test_config_card_id(j))
    continue;
   status = ap_test_queue(AP_MKQID(j, i),
            ap_apft_available(),
            ((void*)0));
   if (status.response_code != AP_RESPONSE_NORMAL)
    continue;
   count++;
  }
  if (count > max_count) {
   max_count = count;
   best_domain = i;
  }
 }
 if (best_domain >= 0) {
  ap_domain_index = best_domain;
  AP_DBF(DBF_DEBUG, "new ap_domain_index=%d\n", ap_domain_index);
 }
 spin_unlock_bh(&ap_domain_lock);
}
