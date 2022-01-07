
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_hba {int msi_lock; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;




 int ST_NOTHANDLED ;
 int ST_S3 ;
 int ST_S4 ;

__attribute__((used)) static int stex_choice_sleep_mic(struct st_hba *hba, pm_message_t state)
{
 switch (state.event) {
 case 128:
  return ST_S3;
 case 129:
  hba->msi_lock = 0;
  return ST_S4;
 default:
  return ST_NOTHANDLED;
 }
}
