
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wilc_priv {int * wep_key; int * wep_key_len; } ;
struct key_params {int key_len; int key; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline void wilc_wfi_cfg_copy_wep_info(struct wilc_priv *priv,
           u8 key_index,
           struct key_params *params)
{
 priv->wep_key_len[key_index] = params->key_len;
 memcpy(priv->wep_key[key_index], params->key, params->key_len);
}
