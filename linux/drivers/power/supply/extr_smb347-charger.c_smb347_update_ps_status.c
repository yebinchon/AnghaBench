
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb347_charger {int mains_online; int usb_online; int lock; TYPE_1__* pdata; int regmap; } ;
struct TYPE_2__ {scalar_t__ use_usb; scalar_t__ use_mains; } ;


 int IRQSTAT_E ;
 unsigned int IRQSTAT_E_DCIN_UV_STAT ;
 unsigned int IRQSTAT_E_USBIN_UV_STAT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int smb347_update_ps_status(struct smb347_charger *smb)
{
 bool usb = 0;
 bool dc = 0;
 unsigned int val;
 int ret;

 ret = regmap_read(smb->regmap, IRQSTAT_E, &val);
 if (ret < 0)
  return ret;





 if (smb->pdata->use_mains)
  dc = !(val & IRQSTAT_E_DCIN_UV_STAT);
 if (smb->pdata->use_usb)
  usb = !(val & IRQSTAT_E_USBIN_UV_STAT);

 mutex_lock(&smb->lock);
 ret = smb->mains_online != dc || smb->usb_online != usb;
 smb->mains_online = dc;
 smb->usb_online = usb;
 mutex_unlock(&smb->lock);

 return ret;
}
