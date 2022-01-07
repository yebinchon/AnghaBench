
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sbsm_data {int last_state; int last_state_cont; int supported_bats; TYPE_2__* muxc; int psy; int client; } ;
struct i2c_client {int dummy; } ;
typedef enum i2c_alert_protocol { ____Placeholder_i2c_alert_protocol } i2c_alert_protocol ;
struct TYPE_4__ {TYPE_1__** adapter; } ;
struct TYPE_3__ {int dev; } ;


 int BIT (int) ;
 int SBSM_BIT_AC_PRESENT ;
 int SBSM_CMD_BATSYSSTATE ;
 int SBSM_CMD_BATSYSSTATECONT ;
 int SBSM_MAX_BATS ;
 int device_for_each_child (int *,int *,int ) ;
 struct sbsm_data* i2c_get_clientdata (struct i2c_client*) ;
 int power_supply_changed (int ) ;
 int sbsm_do_alert ;
 int sbsm_read_word (int ,int ) ;

__attribute__((used)) static void sbsm_alert(struct i2c_client *client, enum i2c_alert_protocol prot,
         unsigned int d)
{
 struct sbsm_data *sbsm = i2c_get_clientdata(client);

 int ret, i, irq_bat = 0, state = 0;

 ret = sbsm_read_word(sbsm->client, SBSM_CMD_BATSYSSTATE);
 if (ret >= 0) {
  irq_bat = ret ^ sbsm->last_state;
  sbsm->last_state = ret;
  state = ret;
 }

 ret = sbsm_read_word(sbsm->client, SBSM_CMD_BATSYSSTATECONT);
 if ((ret >= 0) &&
     ((ret ^ sbsm->last_state_cont) & SBSM_BIT_AC_PRESENT)) {
  irq_bat |= sbsm->supported_bats & state;
  power_supply_changed(sbsm->psy);
 }
 sbsm->last_state_cont = ret;

 for (i = 0; i < SBSM_MAX_BATS; i++) {
  if (irq_bat & BIT(i)) {
   device_for_each_child(&sbsm->muxc->adapter[i]->dev,
           ((void*)0), sbsm_do_alert);
  }
 }
}
