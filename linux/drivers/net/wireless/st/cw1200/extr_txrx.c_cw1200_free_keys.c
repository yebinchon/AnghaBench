
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_common {scalar_t__ key_map; int keys; } ;


 int memset (int *,int ,int) ;

void cw1200_free_keys(struct cw1200_common *priv)
{
 memset(&priv->keys, 0, sizeof(priv->keys));
 priv->key_map = 0;
}
