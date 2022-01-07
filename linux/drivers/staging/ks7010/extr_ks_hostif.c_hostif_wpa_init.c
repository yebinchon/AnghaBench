
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stop; scalar_t__ last_failure_time; scalar_t__ failure; } ;
struct TYPE_4__ {int rsn_enabled; TYPE_1__ mic_failure; } ;
struct ks_wlan_private {TYPE_2__ wpa; } ;


 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static inline void hostif_wpa_init(struct ks_wlan_private *priv)
{
 memset(&priv->wpa, 0, sizeof(priv->wpa));
 priv->wpa.rsn_enabled = 0;
 priv->wpa.mic_failure.failure = 0;
 priv->wpa.mic_failure.last_failure_time = 0;
 priv->wpa.mic_failure.stop = 0;
}
