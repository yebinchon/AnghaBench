
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct wilc_priv {void** wilc_ptk; void** wilc_gtk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int wilc_wfi_cfg_allocate_wpa_entry(struct wilc_priv *priv, u8 idx)
{
 if (!priv->wilc_gtk[idx]) {
  priv->wilc_gtk[idx] = kzalloc(sizeof(*priv->wilc_gtk[idx]),
           GFP_KERNEL);
  if (!priv->wilc_gtk[idx])
   return -ENOMEM;
 }

 if (!priv->wilc_ptk[idx]) {
  priv->wilc_ptk[idx] = kzalloc(sizeof(*priv->wilc_ptk[idx]),
           GFP_KERNEL);
  if (!priv->wilc_ptk[idx])
   return -ENOMEM;
 }

 return 0;
}
