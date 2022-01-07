
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chp_id {int dummy; } ;
struct TYPE_2__ {int standby; int configured; int recognized; } ;


 int CHP_STATUS_CONFIGURED ;
 int CHP_STATUS_NOT_RECOGNIZED ;
 int CHP_STATUS_RESERVED ;
 int CHP_STATUS_STANDBY ;
 TYPE_1__ chp_info ;
 scalar_t__ chp_test_bit (int ,int) ;
 int info_bit_num (struct chp_id) ;
 int info_lock ;
 int info_update () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int chp_info_get_status(struct chp_id chpid)
{
 int rc;
 int bit;

 rc = info_update();
 if (rc)
  return rc;

 bit = info_bit_num(chpid);
 mutex_lock(&info_lock);
 if (!chp_test_bit(chp_info.recognized, bit))
  rc = CHP_STATUS_NOT_RECOGNIZED;
 else if (chp_test_bit(chp_info.configured, bit))
  rc = CHP_STATUS_CONFIGURED;
 else if (chp_test_bit(chp_info.standby, bit))
  rc = CHP_STATUS_STANDBY;
 else
  rc = CHP_STATUS_RESERVED;
 mutex_unlock(&info_lock);

 return rc;
}
