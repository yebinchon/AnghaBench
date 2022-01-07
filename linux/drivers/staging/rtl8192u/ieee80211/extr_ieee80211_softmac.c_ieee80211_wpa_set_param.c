
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
struct ieee80211_security {void* enabled; int level; int flags; } ;
struct ieee80211_device {int wpax_type_set; int wpax_suitlist_lock; void* wpax_type_notify; void* ieee802_1x; void* privacy_invoked; int dev; int (* set_security ) (int ,struct ieee80211_security*) ;void* drop_unencrypted; void* tkip_countermeasures; } ;


 int EOPNOTSUPP ;







 int SEC_ENABLED ;
 int SEC_LEVEL ;
 int SEC_LEVEL_0 ;
 int SEC_LEVEL_1 ;
 int ieee80211_wpa_enable (struct ieee80211_device*,void*) ;
 int ieee80211_wpa_set_auth_algs (struct ieee80211_device*,void*) ;
 int printk (char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct ieee80211_security*) ;

__attribute__((used)) static int ieee80211_wpa_set_param(struct ieee80211_device *ieee, u8 name, u32 value)
{
 int ret = 0;
 unsigned long flags;

 switch (name) {
 case 128:
  ret = ieee80211_wpa_enable(ieee, value);
  break;

 case 130:
  ieee->tkip_countermeasures = value;
  break;

 case 133: {
  struct ieee80211_security sec = {
   .flags = SEC_ENABLED,
   .enabled = value,
  };
  ieee->drop_unencrypted = value;



  if (!value) {
   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_0;
  } else {
   sec.flags |= SEC_LEVEL;
   sec.level = SEC_LEVEL_1;
  }
  if (ieee->set_security)
   ieee->set_security(ieee->dev, &sec);
  break;
 }

 case 131:
  ieee->privacy_invoked = value;
  break;

 case 134:
  ret = ieee80211_wpa_set_auth_algs(ieee, value);
  break;

 case 132:
  ieee->ieee802_1x = value;
  break;
 case 129:

  spin_lock_irqsave(&ieee->wpax_suitlist_lock, flags);
  ieee->wpax_type_set = 1;
  ieee->wpax_type_notify = value;
  spin_unlock_irqrestore(&ieee->wpax_suitlist_lock, flags);
  break;

 default:
  printk("Unknown WPA param: %d\n", name);
  ret = -EOPNOTSUPP;
 }

 return ret;
}
