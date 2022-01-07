
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gtk_cipher; int ptk_cipher; } ;
struct rsi_common {TYPE_1__ secinfo; } ;


 scalar_t__ WLAN_CIPHER_SUITE_WEP104 ;
 scalar_t__ WLAN_CIPHER_SUITE_WEP40 ;

bool rsi_is_cipher_wep(struct rsi_common *common)
{
 if (((common->secinfo.gtk_cipher == WLAN_CIPHER_SUITE_WEP104) ||
      (common->secinfo.gtk_cipher == WLAN_CIPHER_SUITE_WEP40)) &&
     (!common->secinfo.ptk_cipher))
  return 1;
 else
  return 0;
}
