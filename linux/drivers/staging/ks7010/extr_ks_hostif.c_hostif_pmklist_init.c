
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pmk; int head; } ;
struct ks_wlan_private {TYPE_2__ pmklist; } ;
struct TYPE_3__ {int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int PMK_LIST_MAX ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static inline void hostif_pmklist_init(struct ks_wlan_private *priv)
{
 int i;

 memset(&priv->pmklist, 0, sizeof(priv->pmklist));
 INIT_LIST_HEAD(&priv->pmklist.head);
 for (i = 0; i < PMK_LIST_MAX; i++)
  INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
}
