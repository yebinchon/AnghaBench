
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union recv_frame {int dummy; } recv_frame ;
struct ht_priv {int ht_option; } ;
struct mlme_priv {struct ht_priv htpriv; } ;
struct _adapter {int surprise_removed; int driver_stopped; struct mlme_priv mlmepriv; } ;


 int _FAIL ;
 int _SUCCESS ;
 int r8712_recv_indicatepkt (struct _adapter*,union recv_frame*) ;
 int r8712_wlanhdr_to_ethhdr (union recv_frame*) ;
 scalar_t__ recv_indicatepkt_reorder (struct _adapter*,union recv_frame*) ;

__attribute__((used)) static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
         union recv_frame *prframe)
{
 int retval = _SUCCESS;
 struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 struct ht_priv *phtpriv = &pmlmepriv->htpriv;

 if (phtpriv->ht_option == 1) {
  if (recv_indicatepkt_reorder(padapter, prframe)) {

   if (!padapter->driver_stopped &&
       !padapter->surprise_removed)
    return _FAIL;
  }
 } else {
  retval = r8712_wlanhdr_to_ethhdr(prframe);
  if (retval)
   return _FAIL;
  if (!padapter->driver_stopped && !padapter->surprise_removed) {

   r8712_recv_indicatepkt(padapter, prframe);
  } else {
   return _FAIL;
  }
 }
 return retval;
}
