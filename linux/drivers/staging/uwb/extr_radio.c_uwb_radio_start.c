
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct uwb_rc {TYPE_1__ uwb_dev; int active_pals; } ;
struct uwb_pal {int channel; struct uwb_rc* rc; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_radio_change_channel (struct uwb_rc*,int ) ;
 int uwb_radio_select_channel (struct uwb_rc*) ;

int uwb_radio_start(struct uwb_pal *pal)
{
 struct uwb_rc *rc = pal->rc;
 int ret = 0;

 mutex_lock(&rc->uwb_dev.mutex);

 if (!pal->channel) {
  pal->channel = -1;
  rc->active_pals++;
  ret = uwb_radio_change_channel(rc, uwb_radio_select_channel(rc));
 }

 mutex_unlock(&rc->uwb_dev.mutex);
 return ret;
}
