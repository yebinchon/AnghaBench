
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int fw_state; } ;
typedef int sint ;



__attribute__((used)) static inline sint get_fwstate(struct mlme_priv *pmlmepriv)
{
 return pmlmepriv->fw_state;
}
