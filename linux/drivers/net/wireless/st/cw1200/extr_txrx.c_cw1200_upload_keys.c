
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {int key_map; int * keys; } ;


 int BIT (int) ;
 int WSM_KEY_MAX_INDEX ;
 int wsm_add_key (struct cw1200_common*,int *) ;

int cw1200_upload_keys(struct cw1200_common *priv)
{
 int idx, ret = 0;
 for (idx = 0; idx <= WSM_KEY_MAX_INDEX; ++idx)
  if (priv->key_map & BIT(idx)) {
   ret = wsm_add_key(priv, &priv->keys[idx]);
   if (ret < 0)
    break;
  }
 return ret;
}
