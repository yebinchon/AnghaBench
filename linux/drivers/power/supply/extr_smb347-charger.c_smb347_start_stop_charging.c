
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int dev; } ;


 int dev_err (int ,char*) ;
 int smb347_charging_disable (struct smb347_charger*) ;
 int smb347_charging_enable (struct smb347_charger*) ;
 scalar_t__ smb347_is_ps_online (struct smb347_charger*) ;

__attribute__((used)) static int smb347_start_stop_charging(struct smb347_charger *smb)
{
 int ret;






 if (smb347_is_ps_online(smb)) {
  ret = smb347_charging_enable(smb);
  if (ret < 0)
   dev_err(smb->dev, "failed to enable charging\n");
 } else {
  ret = smb347_charging_disable(smb);
  if (ret < 0)
   dev_err(smb->dev, "failed to disable charging\n");
 }

 return ret;
}
