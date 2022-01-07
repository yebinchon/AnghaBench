
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cw1200_common {TYPE_1__* keys; int key_map; } ;
struct TYPE_2__ {int index; } ;


 int BIT (int) ;
 int WSM_KEY_MAX_INDEX ;
 int ffs (int ) ;

int cw1200_alloc_key(struct cw1200_common *priv)
{
 int idx;

 idx = ffs(~priv->key_map) - 1;
 if (idx < 0 || idx > WSM_KEY_MAX_INDEX)
  return -1;

 priv->key_map |= BIT(idx);
 priv->keys[idx].index = idx;
 return idx;
}
