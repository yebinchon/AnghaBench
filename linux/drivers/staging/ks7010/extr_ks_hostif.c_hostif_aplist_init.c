
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct local_ap {int dummy; } ;
struct TYPE_2__ {int * ap; int size; } ;
struct ks_wlan_private {TYPE_1__ aplist; } ;


 int LOCAL_APLIST_MAX ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static inline void hostif_aplist_init(struct ks_wlan_private *priv)
{
 size_t size = LOCAL_APLIST_MAX * sizeof(struct local_ap);

 priv->aplist.size = 0;
 memset(&priv->aplist.ap[0], 0, size);
}
