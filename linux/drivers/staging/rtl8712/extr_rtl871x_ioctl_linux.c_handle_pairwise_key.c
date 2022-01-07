
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int skey; } ;
struct TYPE_8__ {int skey; } ;
struct TYPE_7__ {int skey; } ;
struct sta_info {TYPE_3__ tkiprxmickey; TYPE_2__ tkiptxmickey; TYPE_1__ x_UncstKey; } ;
struct TYPE_10__ {int key_len; int * key; int alg; } ;
struct TYPE_11__ {TYPE_4__ crypt; } ;
struct ieee_param {TYPE_5__ u; } ;
struct TYPE_12__ {int busetkipkey; int tkip_timer; } ;
struct _adapter {TYPE_6__ securitypriv; } ;


 scalar_t__ jiffies ;
 int memcpy (int ,int *,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int r8712_setstakey_cmd (struct _adapter*,unsigned char*,int) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static inline void handle_pairwise_key(struct sta_info *psta,
           struct ieee_param *param,
           struct _adapter *padapter)
{

 memcpy(psta->x_UncstKey.skey, param->u.crypt.key,
        (param->u.crypt. key_len > 16 ? 16 : param->u.crypt.key_len));
 if (strcmp(param->u.crypt.alg, "TKIP") == 0) {
  memcpy(psta->tkiptxmickey. skey,
         &(param->u.crypt.key[16]), 8);
  memcpy(psta->tkiprxmickey. skey,
         &(param->u.crypt.key[24]), 8);
  padapter->securitypriv. busetkipkey = 0;
  mod_timer(&padapter->securitypriv.tkip_timer,
     jiffies + msecs_to_jiffies(50));
 }
 r8712_setstakey_cmd(padapter, (unsigned char *)psta, 1);
}
