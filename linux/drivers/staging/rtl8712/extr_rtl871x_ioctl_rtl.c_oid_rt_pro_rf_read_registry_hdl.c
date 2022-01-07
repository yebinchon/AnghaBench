
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ information_buf; struct _adapter* adapter_context; } ;
struct TYPE_3__ {int bcompleted; unsigned long io_offset; int io_value; int act_type; } ;
struct TYPE_4__ {int act_in_progress; TYPE_1__ workparam; } ;
struct _adapter {TYPE_2__ mppriv; } ;


 int MPT_READ_RF ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 scalar_t__ SET_OID ;
 scalar_t__ r8712_getrfreg_cmd (struct _adapter*,unsigned char,unsigned char*) ;

uint oid_rt_pro_rf_read_registry_hdl(struct oid_par_priv *poid_par_priv)
{
 uint status = RNDIS_STATUS_SUCCESS;
 struct _adapter *Adapter = poid_par_priv->adapter_context;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len == (sizeof(unsigned long) *
         3)) {
  if (Adapter->mppriv.act_in_progress) {
   status = RNDIS_STATUS_NOT_ACCEPTED;
  } else {

   Adapter->mppriv.act_in_progress = 1;
   Adapter->mppriv.workparam.bcompleted = 0;
   Adapter->mppriv.workparam.act_type = MPT_READ_RF;
   Adapter->mppriv.workparam.io_offset = *(unsigned long *)
      poid_par_priv->information_buf;
   Adapter->mppriv.workparam.io_value = 0xcccccccc;
   if (r8712_getrfreg_cmd(Adapter,
       *(unsigned char *)poid_par_priv->information_buf,
       (unsigned char *)&Adapter->mppriv.workparam.io_value
       ))
    status = RNDIS_STATUS_NOT_ACCEPTED;
  }
 } else {
  status = RNDIS_STATUS_INVALID_LENGTH;
 }
 return status;
}
