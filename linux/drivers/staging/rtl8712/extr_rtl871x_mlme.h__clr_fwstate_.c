
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_priv {int fw_state; } ;
typedef int sint ;



__attribute__((used)) static inline void _clr_fwstate_(struct mlme_priv *pmlmepriv, sint state)
{
 pmlmepriv->fw_state &= ~state;
}
