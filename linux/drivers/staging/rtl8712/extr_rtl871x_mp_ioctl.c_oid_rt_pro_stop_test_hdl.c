
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ adapter_context; } ;
struct _adapter {int dummy; } ;


 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 scalar_t__ _FAIL ;
 scalar_t__ mp_stop_test (struct _adapter*) ;

uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 uint status = RNDIS_STATUS_SUCCESS;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (mp_stop_test(Adapter) == _FAIL)
  status = RNDIS_STATUS_NOT_ACCEPTED;
 return status;
}
