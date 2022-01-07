
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb347_charger {int lock; scalar_t__ mains_online; scalar_t__ usb_online; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool smb347_is_ps_online(struct smb347_charger *smb)
{
 bool ret;

 mutex_lock(&smb->lock);
 ret = smb->usb_online || smb->mains_online;
 mutex_unlock(&smb->lock);

 return ret;
}
