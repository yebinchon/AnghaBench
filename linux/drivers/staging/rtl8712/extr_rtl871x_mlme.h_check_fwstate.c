
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlme_priv {int fw_state; } ;
typedef int sint ;



__attribute__((used)) static inline u8 check_fwstate(struct mlme_priv *pmlmepriv, sint state)
{
 if (pmlmepriv->fw_state & state)
  return 1;
 return 0;
}
