
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; int* bytes_rw; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct TYPE_3__ {int bcompleted; int io_value; scalar_t__ io_offset; int act_type; } ;
struct TYPE_4__ {int act_in_progress; TYPE_1__ workparam; } ;
struct _adapter {TYPE_2__ mppriv; } ;


 int MPT_GET_THERMAL_METER ;
 scalar_t__ QUERY_OID ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 int r8712_GetThermalMeter (struct _adapter*,int*) ;

uint oid_rt_get_thermal_meter_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);

 if (poid_par_priv->type_of_oid != QUERY_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;

 if (Adapter->mppriv.act_in_progress)
  return RNDIS_STATUS_NOT_ACCEPTED;

 if (poid_par_priv->information_buf_len < sizeof(u8))
  return RNDIS_STATUS_INVALID_LENGTH;

 Adapter->mppriv.act_in_progress = 1;
 Adapter->mppriv.workparam.bcompleted = 0;
 Adapter->mppriv.workparam.act_type = MPT_GET_THERMAL_METER;
 Adapter->mppriv.workparam.io_offset = 0;
 Adapter->mppriv.workparam.io_value = 0xFFFFFFFF;
 r8712_GetThermalMeter(Adapter, &Adapter->mppriv.workparam.io_value);
 Adapter->mppriv.workparam.bcompleted = 1;
 Adapter->mppriv.act_in_progress = 0;
 *(u32 *)poid_par_priv->information_buf =
     Adapter->mppriv.workparam.io_value;
 *poid_par_priv->bytes_rw = sizeof(u32);
 return RNDIS_STATUS_SUCCESS;
}
