
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chsc_sei_nt0_area {scalar_t__ rs; int ccdf; } ;
struct chp_id {int id; int cssid; } ;
struct chp_config_data {size_t op; int map; } ;


 int CIO_CRW_EVENT (int,char*) ;
 int __MAX_CHPID ;
 int chp_cfg_cancel_deconfigure (struct chp_id) ;
 int chp_cfg_schedule (struct chp_id,int) ;
 int chp_id_init (struct chp_id*) ;
 int chp_test_bit (int ,int) ;
 int pr_notice (char*,char*,int ,int) ;

__attribute__((used)) static void chsc_process_sei_chp_config(struct chsc_sei_nt0_area *sei_area)
{
 struct chp_config_data *data;
 struct chp_id chpid;
 int num;
 char *events[3] = {"configure", "deconfigure", "cancel deconfigure"};

 CIO_CRW_EVENT(4, "chsc: channel-path-configuration notification\n");
 if (sei_area->rs != 0)
  return;
 data = (struct chp_config_data *) &(sei_area->ccdf);
 chp_id_init(&chpid);
 for (num = 0; num <= __MAX_CHPID; num++) {
  if (!chp_test_bit(data->map, num))
   continue;
  chpid.id = num;
  pr_notice("Processing %s for channel path %x.%02x\n",
     events[data->op], chpid.cssid, chpid.id);
  switch (data->op) {
  case 0:
   chp_cfg_schedule(chpid, 1);
   break;
  case 1:
   chp_cfg_schedule(chpid, 0);
   break;
  case 2:
   chp_cfg_cancel_deconfigure(chpid);
   break;
  }
 }
}
